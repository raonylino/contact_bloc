import 'package:contact_bloc/features/contacts_cubit/update/cubit/contact_update_cubit.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUpdateCubitPage extends StatefulWidget {
  final ContactsModel contact;

  const ContactUpdateCubitPage({
    super.key,
    required this.contact,
  });
  
  @override
  State<ContactUpdateCubitPage> createState() => _ContactUpdateCubitPageState();
}

class _ContactUpdateCubitPageState extends State<ContactUpdateCubitPage> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController _nameEC;
  late final TextEditingController _emailEC;

  @override
  void initState() {
    super.initState();
    _nameEC = TextEditingController(text: widget.contact.name);
    _emailEC = TextEditingController(text: widget.contact.email);
  }

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Cubit'),
      ),
      body: BlocListener<ContactUpdateCubit, ContactUpdateCubitState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              Navigator.of(context).pop();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    message,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameEC,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome obrigatorio';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailEC,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Email obrigatorio';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final validate =
                            formKey.currentState?.validate() ?? false;
                        if (validate) {
                          context.read<ContactUpdateCubit>().update(
                                ContactsModel(
                                  name: _nameEC.text,
                                  email: _emailEC.text,
                                  id: widget.contact.id,
                                ),
                              );
                        }
                      },
                      child: const Text('Salvar'),
                    ),
                  ],
                ),
                Loader<ContactUpdateCubit, ContactUpdateCubitState>(
                  selector: (state) => state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

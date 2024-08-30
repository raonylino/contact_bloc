import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactRegisterPage extends StatefulWidget {
  const ContactRegisterPage({super.key});

  @override
  State<ContactRegisterPage> createState() => _ContactRegisterPageState();
}

class _ContactRegisterPageState extends State<ContactRegisterPage> {
  final formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();

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
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child:Column(
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
              ElevatedButton(
                onPressed: () {
                  final validate = formKey.currentState?.validate() ?? false;
                  if (validate) {
                    context.read<ContactRegisterBloc>().add(
                      ContactRegisterEvent.save(
                        name: _nameEC.text,
                        email: _emailEC.text,
                      ),
                    );
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

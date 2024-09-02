import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/contact/register');
          // ignore: use_build_context_synchronously
          context.read<ContactListBloc>().add(const ContactListEvent.findAll());
        },
        child: const Icon(Icons.add),
      ),
      body: BlocListener<ContactListBloc, ContactListState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (error) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error,
                  style: const TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.red,
              ),
            );
          });
        },
        child: RefreshIndicator(
          onRefresh: () async => context
              .read<ContactListBloc>()
              .add(const ContactListEvent.findAll()),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Loader<ContactListBloc, ContactListState>(
                      selector: (state) {
                        return state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                      },
                    ),
                    BlocSelector<ContactListBloc, ContactListState,
                        List<ContactsModel>>(selector: (state) {
                      return state.maybeWhen(
                        data: (contacts) => contacts,
                        orElse: () => [],
                      );
                    }, builder: (context, contacts) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          final contact = contacts[index];
                          return ListTile(
                            onTap: () async {
                              await Navigator.pushNamed(
                                context,
                                '/contact/update',
                                arguments: contact,
                              );
                              // ignore: use_build_context_synchronously
                              context
                                  .read<ContactListBloc>()
                                  .add(const ContactListEvent.findAll());
                            },
                            onLongPress: () {
                               Dialogs.bottomMaterialDialog(
                                  msg:
                                      'Tem certeza que deseja excluir o contato ${contact.name}?',
                                  title: 'Delete',
                                  context: context,
                                  // ignore: deprecated_member_use
                                  actions: [
                                    IconsOutlineButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'Cancel',
                                      iconData: Icons.cancel_outlined,
                                      textStyle: const TextStyle(color: Colors.white),
                                      iconColor: Colors.white,
                                      color: Colors.orange,
                                    ),
                                    IconsButton(
                                      onPressed: () async {
                                        context.read<ContactListBloc>().add(
                                              ContactListEvent.delete(
                                                  model: contact),
                                            );
                                        Navigator.pop(context);
                                      },
                                      text: 'Delete',
                                      iconData: Icons.delete,
                                      color: Colors.red,
                                      textStyle: const TextStyle(color: Colors.white),
                                      iconColor: Colors.white,
                                    ),
                                  ]);
                            },
                            title: Text(contact.name),
                            subtitle: Text(contact.email),
                          );
                        },
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

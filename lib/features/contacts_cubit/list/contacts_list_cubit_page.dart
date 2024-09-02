import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/models/contacts_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListCubitPage extends StatelessWidget {

  const ContactsListCubitPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Contacts List Cubit'),),
              floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/contact/cubit/register');
          // ignore: use_build_context_synchronously
          context.read<ContactListCubit>().findAll();
          
        },
        child: const Icon(Icons.add),
      ),
           body: RefreshIndicator(
             onRefresh: () => context.read<ContactListCubit>().findAll(),
             child: CustomScrollView(
               slivers: [
                SliverFillRemaining(
                  child:Column(
                    children: [
                      Loader<ContactListCubit, ContactListCubitState>(
                        selector: (state) {
                         return state.maybeWhen(
                            loading: () => true,
                            orElse: () => false
                          );
                        }
                        ),
                        BlocSelector<ContactListCubit, ContactListCubitState, List<ContactsModel>>(
                          selector: (state) {
                            return state.maybeWhen(
                              data: (contacts) => contacts,
                              orElse: () => <ContactsModel>[]
                            );
                          }, 
                          builder: (context, contacts) {
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: contacts.length,
                              itemBuilder: (context, index) {
                                final contact = contacts[index];
                                return ListTile(
                                  onLongPress: () {
                                    context.read<ContactListCubit>().deleteByModel(contact);
                                  },
                                  onTap: () async {
                                    await Navigator.pushNamed(context, '/contact/cubit/update', arguments: contact);
                                    // ignore: use_build_context_synchronously
                                    context.read<ContactListCubit>().findAll();
                                  },
                                  title: Text(contact.name),
                                  subtitle: Text(contact.email),
                                );
                              }
                            );
                          }
                          ),
                    ]
                  ),
                )
               ],
             ),
           ),
       );
  }
}
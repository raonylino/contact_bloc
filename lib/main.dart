import 'package:contact_bloc/features/bloc_exemple/bloc/exemple_bloc.dart';
import 'package:contact_bloc/features/bloc_exemple/bloc_exemple_page.dart';
import 'package:contact_bloc/features/bloc_exemple/bloc_freezed_exemple_page.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/bloc_exemple/bloc_frezeed/exemple_freezed_bloc.dart';
import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (_) => const HomePage(),
          '/bloc/exemple': (_) => BlocProvider(
                create: (context) => ExempleBloc()..add(ExempleFindNameEvent()),
                child: const BlocExemplePage(),
              ),
          '/bloc/exemple/freezed': (_) => BlocProvider(
                create: (context) => ExempleFreezedBloc()
                  ..add(
                    const ExempleFreezedEvent.findNames(),
                  ),
                child: const BlocFreezedExemplePage(),
              ),
          '/contact/list': (_) => BlocProvider(
                create: (context) => ContactListBloc(
                    repository: context.read<ContactsRepository>())
                  ..add(const ContactListEvent.findAll()),
                child: const ContactsListPage(),
              ),
          '/contact/register': (context) => BlocProvider(
                create: (context) => ContactRegisterBloc(contactsRepository: context.read()),
                child: const ContactRegisterPage(),
              ),
          '/contact/update': (context) => const ContactUpdatePage(),
        },
      ),
    );
  }
}

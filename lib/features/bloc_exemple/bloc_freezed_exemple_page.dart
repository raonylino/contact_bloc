import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_frezeed/exemple_freezed_bloc.dart';

class BlocFreezedExemplePage extends StatelessWidget {
  const BlocFreezedExemplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freezed Exemple'),
      ),
      body: Column(
        children: [
          BlocSelector<ExempleFreezedBloc, ExempleFreezedState, List<String>>(
              selector: (state) {
            return state.maybeWhen(
              data: (names) => names,
              orElse: () => <String>[],
            );
          }, builder: (context, names) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (context, index) {
                final name = names[index];
                return ListTile(
                  onTap: () {},
                  title: Text(name),
                );
              },
            );
          })
        ],
      ),
    );
  }
}

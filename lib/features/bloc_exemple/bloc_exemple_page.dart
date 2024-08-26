import 'package:contact_bloc/features/bloc_exemple/bloc/exemple_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExemplePage extends StatelessWidget {
  const BlocExemplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Exemple'),
      ),
      body: BlocListener<ExempleBloc, ExempleState>(
        listenWhen: (previous, current) {
          if (previous is ExempleStateInitial && current is ExempleStateData) {
            if (current.names.length > 3) {
              return true;
            }
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExempleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('a quantidade de nomes é ${state.names.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExempleBloc, ExempleState>(
              listener: (context, state) {
                print('Estado altera para ${state.runtimeType}');
              },
              builder: (context, state) {
                if (state is ExempleStateData) {
                  return Text('Total de nomes é ${state.names.length}');
                }
                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExempleBloc, ExempleState, bool>(selector: (state) {
              if (state is ExempleStateInitial) {
                return true;
              }
              return false;
            }, builder: (context, showloader) {
              if (showloader) {
                return const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),

            BlocSelector<ExempleBloc, ExempleState, List<String>>(
              selector: (state) {
                if (state is ExempleStateData) {
                  return state.names;
                }
                return [];
              },
              builder: (context, names) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    final name = names[index];
                    return ListTile(
                      onTap: () {
                        context.read<ExempleBloc>().add(
                              // ExempleRemoveNameEvent(name: name), remover nome
                              ExempleAddNameEvent(name: name), // adicionar nome
                            );
                      },
                      title: Text(name),
                    );
                  },
                );
              },
            ),

            // BlocBuilder<ExempleBloc, ExempleState>(
            //   builder: (context, state) {
            //     if (state is ExempleStateData) {
            //       return ListView.builder(
            //         shrinkWrap: true,
            //         itemCount: state.name.length,
            //         itemBuilder: (context, index) {
            //           final name = state.name[index];
            //           return ListTile(
            //             title: Text(name),
            //           );
            //         },
            //       );
            //     } else {
            //       return const Center(
            //         child: Text('nenhum nome encontrado'),
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

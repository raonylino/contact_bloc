import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Wrap(
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/bloc/exemple');
                  }, child: const Text('Exemple'),),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/bloc/exemple/freezed');
                  }, child: const Text('Exemple Freezed')),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/contact/list');
                  }, child: const Text('Contact')),
                  ElevatedButton(onPressed: () {}, child: const Text('Contact Cubit')),
                ],
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//   create a provider
final appbarTitleProvider = Provider<String>((ref) => 'Counter App');

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '0',
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(height: 8),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}

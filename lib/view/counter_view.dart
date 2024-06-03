import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//   create a provider
final appbarTitleProvider = Provider<String>((ref) => 'Counter App');
final counterProvider = StateProvider<int>((ref) {
  return 69;
});

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Consumer(builder: (_, ref, __) {
        return Text(ref.read(appbarTitleProvider));
      })),
      body: Center(
        child: Consumer(builder: (_, ref, __) {
          return Text(
            ref.read(counterProvider).toString(),
            style: const TextStyle(fontSize: 24),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(height: 8),
          FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}

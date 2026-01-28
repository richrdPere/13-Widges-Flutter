import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nueva_app/src/presentation/providers/counter_provider.dart';
import 'package:nueva_app/src/presentation/providers/theme_provider.dart';

class CountScreen extends ConsumerWidget {
  static const name = 'count_screen';
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              ref.read(counterProvider.notifier).state = 0;
            },
          ),

          IconButton(
            icon: Icon(
              isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((isDarkmode) => !isDarkmode);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Valor: $clickCounter",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state++;

          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

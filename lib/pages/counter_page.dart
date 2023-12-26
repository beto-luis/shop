import 'package:flutter/material.dart';
import 'package:shop/providers/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Exemplo Contador',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Text(CounterProvider.of(context)?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.inc();
              });

              print(provider?.state.value);
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.dec();
              });
              print(provider?.state.value);
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

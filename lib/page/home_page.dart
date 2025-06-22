import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_provider.dart';
import 'package:provider_demo/provider/name_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: Center(
        child: Consumer(
          builder: (ctx, _, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 7,
              children: [
                Text("This is Counter Variables!"),
                Text(context.watch<CounterProvider>().getNumber.toString()),
                Text(context.watch<NameProvider>().getName),
                TextField(
                  onChanged: (value) {
                    ctx.read<NameProvider>().changeName(newName: value);
                  },
                  decoration: InputDecoration(hintText: "Enter Your Name?"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ctx.read<NameProvider>().removeName();
                  },
                  child: Text("Clear Name"),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increaseCounter();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decreaseCounter();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

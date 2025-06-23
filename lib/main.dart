import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/page/color_page.dart';
import 'package:provider_demo/provider/color_provider.dart';
import 'package:provider_demo/provider/counter_provider.dart';
import 'package:provider_demo/provider/name_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
        ChangeNotifierProvider<NameProvider>(create: (_) => NameProvider()),
        ChangeNotifierProvider<ColorProvider>(create: (_) => ColorProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ColorPage(),
    );
  }
}

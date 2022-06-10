import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tutorial_hooks_timer/timer_hook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hooks Timer',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            HomePageCustomHook(),
            HomePageCustomHook2(),
          ],
        ),
      ),
    );
  }
}

class HomePageCustomHook extends HookWidget {
  const HomePageCustomHook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = useInfiniteTimer(context);
    return Text(number.toString());
  }
}

class HomePageCustomHook2 extends HookWidget {
  const HomePageCustomHook2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = useInfiniteTimer(context);
    return Text(number.toString());
  }
}

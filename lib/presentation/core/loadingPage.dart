import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  static Page page() => const MaterialPage<void>(child: LoadingPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/soccer-fans.json',
            width: 400, height: 400, fit: BoxFit.cover),
      ),
    );
  }
}

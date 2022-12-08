import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/core/injection_container.dart';
import 'package:stavnica/presentation/core/theme.dart';
import 'package:stavnica/presentation/home.dart';
import 'package:stavnica/presentation/router.gr.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: Home()));
}

class MyApp extends StatelessWidget {
  static Page page() => MaterialPage<void>(
        child: MyApp(),
      );

  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stavnica',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: theme,
    );
  }
}

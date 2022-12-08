import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:stavnica/application/auth/auth_notifier.dart';
import 'package:stavnica/application/auth/auth_riverpod.dart';
import 'package:stavnica/main.dart';
import 'package:stavnica/presentation/auth/auth.dart';
import 'package:stavnica/presentation/core/loadingPage.dart';
import 'package:stavnica/presentation/core/theme.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authNotifierProvider);
    return MaterialApp(
      theme: theme,
      home: FlowBuilder<AuthState>(
        state: authState,
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}

List<Page> onGenerateAppViewPages(AuthState state, List<Page<dynamic>> pages) {
  return state.maybeWhen(
    unauthenticated: (message) => [AuthPage.page()],
    authenticated: (user) => [MyApp.page()],
    orElse: () => [LoadingPage.page()],
  );
}

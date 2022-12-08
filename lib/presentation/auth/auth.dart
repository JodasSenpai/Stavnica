import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stavnica/application/auth/auth_notifier.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});
  static Page page() => const MaterialPage<void>(
        child: AuthPage(),
      );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authNotifierProvider);

    return FlutterLogin(
      footer:
          "Za registracijo ni potrebno uporabljat realnih mailov. Uporabljajte izmisljenje maile. Primer: ziga@spica.si, gesla pa naj bodo enostavna, primer: 123456",
      titleTag: "safdsafsdfs",
      title: 'Stavnica',
      /*children: [
        Container(
            margin: EdgeInsets.fromLTRB(0, 330, 0, 0),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text("data"))
      ],*/
      onLogin: ((loginData) {
        ref
            .read(authNotifierProvider.notifier)
            .login(loginData.name, loginData.password);
      }),
      onSignup: (registerData) {
        ref
            .read(authNotifierProvider.notifier)
            .register(registerData.name!, registerData.password!);
      },
      userValidator: (value) {
        final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value!);
        return emailValid ? null : "Nujna oblika: neki@neki.neki";
      },
      passwordValidator: ((value) {
        if (value != null) {
          final passwordValid = value.length >= 6;
          return passwordValid ? null : "Geslo mora imeti vsaj 6 znakov";
        }
        return "vpiši geslo";
      }),
      onRecoverPassword: (String) {},
      hideForgotPasswordButton: true,
      termsOfService: [],
      messages: LoginMessages(
          additionalSignUpFormDescription:
              "Za registracijo ni potrebno uporabljat realnih mailov. Uporabljajte izmisljenje maile. Primer: ziga@spica.si, gesla pa naj bodo enostavna, primer: 123456",
          flushbarTitleError:
              "maili morjo biti nujno v obliki __@__.__ . Primer: neki@neki.neki",
          loginButton: "Prijava",
          signupButton: "Registracija",
          passwordHint: "Geslo",
          confirmPasswordHint: "Potrdi geslo"),
      /*onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardScreen(),
        ));
      },*/
    );
  }
}

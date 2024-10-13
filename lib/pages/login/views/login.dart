import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const double maxWidth = 850;
    final double horizontalMargin = screenWidth > maxWidth
        ? (screenWidth - maxWidth) / 2
        : screenWidth * 0.10;

    return FScaffold(
      content: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
        child: SafeArea(
          child: Column(
            children: [
              const FTextField(label: Text('Username'), hint: 'Valentín'),
              const SizedBox(
                height: 25,
              ),
              const FTextField.password(label: Text('Password'), hint: '1234'),
              const SizedBox(
                height: 25,
              ),
              FButton(
                prefix: FButtonIcon(icon: FAssets.icons.logIn),
                label: const Text('Log in'),
                onPress: () {
                  //LOG IN CHECKING
                },
              ),
              const FDivider(),
            ],
          ),
        ),
      ),
    );
  }
}

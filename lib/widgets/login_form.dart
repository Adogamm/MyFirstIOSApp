import 'package:flutter/material.dart';
import 'package:hello_world/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: [
          InputText(
            passwordField: false,
            keyboardType: TextInputType.text,
            label: 'Ingresa tu nombre de entrenador',
          ),
          InputText(
            passwordField: true,
            label: 'Ingresa tu contraseña',
          )
        ],
      ),
    );
  }
}
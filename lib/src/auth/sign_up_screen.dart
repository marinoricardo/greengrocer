// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greengrocer/src/components/custom_text_field.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),

          // formulario de registo
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              children: [
                CustomTextField(label: 'E-mail', icon: Icons.email),
                CustomTextField(label: 'Senha', icon: Icons.lock),
                CustomTextField(label: 'Nome', icon: Icons.person),
                CustomTextField(label: 'Celular', icon: Icons.phone),
                CustomTextField(label: 'CPF', icon: Icons.file_copy),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/components/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          CustomTextField(
            label: 'E-mail',
            icon: Icons.email,
          ),
          CustomTextField(
            label: 'Nome',
            icon: Icons.person,
          ),
          CustomTextField(
            label: 'Celular',
            icon: Icons.phone,
          ),
        ],
      ),
    );
  }
}

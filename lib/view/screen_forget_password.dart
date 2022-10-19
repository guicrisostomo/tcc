import 'package:flutter/material.dart';
import 'package:tcc/widget/button.dart';
import 'package:tcc/widget/textFieldEmail.dart';

class ScreenForgetPassword extends StatefulWidget {
  const ScreenForgetPassword({super.key});

  @override
  State<ScreenForgetPassword> createState() => _ScreenForgetPasswordState();
}

class _ScreenForgetPasswordState extends State<ScreenForgetPassword> {
  var txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperação de senha'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(50, 62, 64, 1),
      ),

      body: Column(
        children: [
          const Text('Digite seu e-mail usado no cadastro'),
          const SizedBox(height: 5,),
          textFieldEmail('E-mail', txtEmail, context),
          
          const SizedBox(height: 10,),
          button('Confirmar', context, 'login/forget_password/validation')
        ],
      ),
    );
  }
}
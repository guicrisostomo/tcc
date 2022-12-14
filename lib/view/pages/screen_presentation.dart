// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tcc/view/widget/button.dart';
import 'package:tcc/view/widget/imageMainScreens.dart';

class ScreenPresentation extends StatelessWidget {
  const ScreenPresentation({super.key});

  final String imgPresentation = 'lib/images/imgPresentation.svg';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              SizedBox(height: 0,),
              Column(
                children: [
                  imgCenter(imgPresentation),
                  SizedBox(height: 14,),
                  Text(
                    'Peça sua pizza de onde quiser e divida com quem você ama',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  
                  button('Entrar', 100, 50, () {
                    Navigator.popAndPushNamed(context, 'login');
                  }),

                  button('Cadastrar', 100, 50, () {
                    Navigator.popAndPushNamed(context, 'register');
                  }),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
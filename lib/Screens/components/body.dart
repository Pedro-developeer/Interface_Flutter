import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logininterface/Screens/Login/login_screen.dart';
import 'package:logininterface/components/button_rounded.dart';
import 'package:logininterface/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //O size fornecera altura e largura da tela
    return Backgraund(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bem-vindo Pedro!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(
            text: 'Entrar',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }
                ),
              );
            },
          ),
          RoundedButton(
            text: 'Cadastrar',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}

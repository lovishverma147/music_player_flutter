import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/widgets/button_builder.dart';
import 'package:music_player/widgets/input_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  bool visibility = false;

  @override
  Widget build(BuildContext context) {

    final mq = MediaQuery.of(context);
    final bottomOffset = mq.viewInsets.bottom + mq.padding.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 175),
        margin: EdgeInsets.only(bottom: bottomOffset),
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/white_desk_headphone.png"),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Wrap(
              runSpacing: 50,
              alignment: WrapAlignment.center,
              children: [
                Text("LyricPulse", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 50)),
                Wrap(
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    Text("Log in", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
                    InputBuilder("Email"),
                    InputBuilder("Password", password: true),
                    ButtonBuilder("LOG IN", color: kPrimaryColor, backgroundColor: kSecondaryColor),
                    ButtonBuilder("Forgot password ?",
                        color: kSecondaryColor, backgroundColor: Colors.transparent, paddingVertical: 10),
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}

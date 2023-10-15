// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodfinder/src/Auth/components/custom_text_field.dart';
import 'package:foodfinder/src/Auth/sign_up_screen.dart';
import 'package:foodfinder/src/base/base_screen.dart';
import 'package:foodfinder/src/config/custom_colors.dart';

class SignIscreen extends StatelessWidget {
  const SignIscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(style: TextStyle(fontSize: 40), children: [
                  TextSpan(
                      text: 'Food',
                      style: TextStyle(
                          color: CustomColor.customContrastColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "Finder",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold))
                ])),
                DefaultTextStyle(
                  style: TextStyle(fontSize: 25),
                  child: SizedBox(
                    height: 30,
                    child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText("Sushi"),
                          FadeAnimatedText("Sashimi"),
                          FadeAnimatedText("Tempura"),
                          FadeAnimatedText("Ramen"),
                          FadeAnimatedText("Udon"),
                          FadeAnimatedText("Miso Soup"),
                          FadeAnimatedText("Yakitori"),
                          FadeAnimatedText("Teriyaki"),
                          FadeAnimatedText("Gyoza"),
                          FadeAnimatedText("Okonomiyaki"),
                          FadeAnimatedText("Nigiri"),
                          FadeAnimatedText("Mochi"),
                          FadeAnimatedText("Matcha"),
                        ]),
                  ),
                )
              ],
            )),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      icon: Icons.email,
                      label: 'E-mail',
                      isSecret: false,
                    ),
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    SizedBox(
                        height: 50,
                        width: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                backgroundColor:
                                    Color.fromARGB(244, 32, 209, 9)),
                            onPressed: () {

                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (e){
                                    return BaseScreen();
                                  }));
                            },
                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 110, 75, 75)),
                            ))),
                    Center(
                      child: Align(
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Esqueceu a Senha? ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: CustomColor.customContrastColor))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: const Text("OU"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 2, color: Colors.green)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) {
                                return SignUpScreen();
                              }),
                            );
                          },
                          child: const Text(
                            "Criar Conta",
                            style: TextStyle(fontSize: 18),
                          )),
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}

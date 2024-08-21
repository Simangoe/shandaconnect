import 'package:flutter/material.dart';
import 'roundedbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Image.asset(
        'assets/bg.png',
        fit: BoxFit.fitHeight,
      ),
      Column(
        children: [
          Expanded(flex: 2, child: Container()),
          Image.asset(
            'assets/logo.png',
            width: 200,
          ),
          const Center(
            child: Text(
              "Welcome to",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Image.asset(
            'assets/applogo.png',
            width: 200,
          ),
          RoundedButton(
              colour: Color.fromARGB(110, 52, 87, 130),
              title: 'signin',
              onPressed: () {}),
          Expanded(flex: 1, child: Container()),
          Row(children: [
            Expanded(child: Container()),
            const Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Sign up",
                    style: TextStyle(color: Colors.grey))),
            Expanded(child: Container()),
          ]),
          Expanded(flex: 3, child: Container()),
        ],
      ),
    ]));
  }
}

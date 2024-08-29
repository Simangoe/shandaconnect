import 'package:flutter/material.dart';
import '../functions/textfield.dart';
import '../functions/roundedbutton.dart';
import 'findjobpage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Image.asset(
        'assets/bg.png',
        fit: BoxFit.cover,
      ),
      Column(
        children: [
          Expanded(flex: 3, child: Container()),
          const Center(
            child: Text(
              "SignIn",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            "Sign in to continue",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                // Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your username',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                // Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
          ),
          RoundedButton(
              colour: const Color.fromARGB(110, 52, 87, 130),
              title: 'LogIn',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FindJobPage()));
              }),
          Expanded(flex: 0, child: Container()),
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

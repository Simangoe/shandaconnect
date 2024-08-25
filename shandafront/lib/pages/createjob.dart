import 'package:flutter/material.dart';
import 'package:shandaconnect/pages/findjob.dart';

class Createjob extends StatelessWidget {
  const Createjob({super.key});

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
          Container(
            height: 100,
            color: const Color.fromARGB(255, 5, 4, 17),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FindJob()));
                            },
                            child: const Text(
                              "Find Jobs",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 84, 83, 83)),
                            ))),
                    Expanded(
                        child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "Create Job",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}

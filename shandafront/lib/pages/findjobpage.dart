import 'package:flutter/material.dart';
import 'package:shandaconnect/functions/navigatewithouttransition.dart';
import 'package:shandaconnect/pages/createjobpage.dart';
import 'package:shandaconnect/pages/menupage.dart';

class FindJobPage extends StatelessWidget {
  const FindJobPage({super.key});

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
                        flex: 1,
                        child: MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              navigateWithoutTransition(
                                  context, const MenuPage());
                            },
                            child: const Icon(
                              Icons.more_vert_outlined,
                              color: Color.fromARGB(255, 84, 83, 83),
                            ))),
                    Expanded(
                        flex: 4,
                        child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              "Find Jobs",
                              style: TextStyle(color: Colors.white),
                            ))),
                    Expanded(
                        flex: 4,
                        child: MaterialButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            navigateWithoutTransition(
                                context, const CreateJobPage());
                          },
                          child: const Text(
                            "Create Job",
                            style: TextStyle(
                                color: Color.fromARGB(255, 84, 83, 83)),
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

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shandaconnect/functions/navigatewithouttransition.dart';
import 'package:shandaconnect/pages/createjobpage.dart';
import 'package:shandaconnect/pages/findjobpage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // background
          Image.asset('assets/bg.png', fit: BoxFit.cover),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container()),
          // app bar modified
          Column(children: [
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
                              onPressed: () {},
                              child: const Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
                              ))),
                      Expanded(
                          flex: 4,
                          child: MaterialButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                navigateWithoutTransition(
                                    context, const FindJobPage());
                              },
                              child: const Text(
                                "Find Jobs",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 84, 83, 83)),
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
            ClipRRect(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 1, 16, 16),
              child: Center(
                child: Expanded(
                  child: Container(
                    height: 600,
                    width: 400,
                    color: const Color.fromARGB(97, 0, 0, 0),
                  ),
                ),
              ),
            ))
          ])
        ],
      ),
    );
  }
}

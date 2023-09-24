import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.male,
                          size: 200,
                        ),
                        Text("Male"),
                      ],
                    ),
                  ),
                  //const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.female,
                          size: 200,
                        ),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        const Text(
                          "176",
                          style: TextStyle(
                              color: Color(0xFFFF8888),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        const Text(
                          "76",
                          style: TextStyle(
                              color: Color(0xFFFF8888),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    ));
  }
}

import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 70;

  String gender = '';

  late double bmi = calculateBMI(height: height, weight: weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white24,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Male");
                      setState(() {
                        gender = 'M';
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                        color: gender == 'M'
                            ? Colors.orange.withAlpha(150)
                            : Colors.orange.withAlpha(50),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.male,
                            size: 150,
                          ),
                          Text(
                            "Male",
                            style: kTextWordColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      print("Female");
                      setState(() {
                        gender = 'F';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: gender == 'F'
                            ? Colors.orange.withAlpha(150)
                            : Colors.orange.withAlpha(50),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 200,
                      width: 175,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            size: 150,
                          ),
                          Text(
                            "Female",
                            style: kTextWordColor,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Height",
                          style: kTextWordColor,
                        ),
                        Text(
                          "$height",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 25),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 210) height++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
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
                        const Text(
                          "Weight",
                          style: kTextWordColor,
                        ),
                        Text(
                          "$weight",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 35) weight--;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 25),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 300) weight++;
                                  bmi = calculateBMI(
                                      height: height, weight: weight);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  const Text(
                    "BMI",
                    style: kTextWordColor,
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: kInputLabelColor.copyWith(
                        color: kOutputTextColor, fontSize: 60),
                  ),
                  Text(getResult(bmi))
                ],
              )
            ],
          )),
    ));
  }

  double calculateBMI({required height, required weight}) {
    return (weight / (height * height)) * 10000;
  }

  String getResult(bmiValue) {
    if (bmiValue >= 25) {
      return 'Overweight';
    } else if (bmiValue > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}

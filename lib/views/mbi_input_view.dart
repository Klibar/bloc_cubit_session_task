import 'package:flutter/material.dart';
import 'package:mbi_calculator/views/bmi_result_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color maleCardColor = Color(0xff1d1e33);
  Color femaleCardColor = Color(0xff1d1e33);
  Color textColor = Color(0x84FFFFFF);
  int userHeight = 100;
  int userWhight = 50;
  int userAge = 10;
  bool gender = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xD60A0E21),
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff0a0e21),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          maleCardColor = Color(0xff111328);
                          femaleCardColor = Color(0xff1d1e33);
                          gender = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 200,
                        decoration: BoxDecoration(
                          color: maleCardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Icon(Icons.male, color: Colors.white, size: 80),
                            Text(
                              'MALE',
                              style: TextStyle(color: textColor, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          femaleCardColor = Color(0xff111328);
                          maleCardColor = Color(0xff1d1e33);
                          gender = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 200,
                        decoration: BoxDecoration(
                          color: femaleCardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Icon(Icons.female, color: Colors.white, size: 80),
                            Text(
                              'FEMALE',
                              style: TextStyle(color: textColor, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 40,
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'HEIGHT',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 20,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              userHeight.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' cm',
                              style: TextStyle(color: textColor, fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Slider(
                              value: userHeight.toDouble(),
                              min: 10,
                              max: 220,
                              activeColor: Colors.pinkAccent,
                              inactiveColor: textColor,
                              onChanged: (value) {
                                setState(() {
                                  userHeight = value.toInt();
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Text(
                        userWhight.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  userWhight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  userWhight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Text(
                        userAge.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 115,
                decoration: BoxDecoration(color: Color(0xffe83d66)),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

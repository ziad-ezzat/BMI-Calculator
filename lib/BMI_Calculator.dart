import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  bool isMale = true;
  double height = 120;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.grey[400] : Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Femlae',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
              
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80,
                      max: 250,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weight++',
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(Icons.add),
                                mini: true,
                              ),
                              FloatingActionButton(
                                heroTag: 'weight--',
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(Icons.remove),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age++',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add),
                                mini: true,
                              ),
                              FloatingActionButton(
                                heroTag: 'age--',
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(Icons.remove),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                  onPressed: () {
                    double result = weight / ((height / 100) * (height / 100));
                    print(result.round());
                    // want show result in popup
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'BMI Result',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Your BMI is',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${result.round()}',
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '${result.round() >= 40 ? 'Obesity Class 3' : result.round() >= 35 ? 'Obesity Class 2' : result.round() >= 30  ? 'Obesity Class 1' : result.round() >= 25  ? 'Overweight' : result.round() >= 18.5  ? 'Normal' :  'You are underweight'}',
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white),
                  ))
          ),
        ],
      ),
    );
  }
}

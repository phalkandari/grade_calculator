import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final myGradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text("Grade Calculator"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myGradeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Write your grade",
                prefixIcon: Icon(
                  Icons.percent, //or CupertinoIcons.percent
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // print(myGradeController.text);

              int? grade = int.tryParse(
                  myGradeController.text); //parse and tryParse section
              if (grade == null) {
                print("${myGradeController.text} is NOT a number");
                return; //Why if we entered 5.5 it tells you it is NOT a number? and Why can't we change int to double?
              }

              if (grade >= 90) {
                print("A");
              } else if (grade >= 80) {
                print("B");
              } else if (grade >= 70) {
                print("C");
              } else {
                print("F");
              }
            },
            child: Text("Calculate"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final myGradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grade calculator"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myGradeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Type your score",
                prefixIcon: Icon(Icons.percent),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print(myGradeController.text);

                int? grade = int.tryParse(myGradeController.text);

                if (grade == null) {
                  print("${myGradeController.text} is NOT a number");
                  return;
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Background color
              ),
              child: Text("Calculate")),
        ],
      ),
    );
  }
}

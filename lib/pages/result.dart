import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String bmiResult;
  String textResult;

  Result({this.bmiResult, this.textResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "BMI Result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
      body:
      Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Result",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                bmiResult,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                textResult.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: Image.asset('assets/images/bmi2.jpg',fit: BoxFit.fitWidth,),
              )

            ],
          ),
        ),
      ),

    );
  }
}

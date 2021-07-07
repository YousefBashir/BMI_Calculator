import 'package:bmi_calculator/models/BMI.dart';
import 'package:bmi_calculator/pages/result.dart';
import 'package:bmi_calculator/widgets/gender.dart';
import 'package:bmi_calculator/widgets/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height=162;
  int weight=51;
  BmiModel bmiModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
        "BMI Calculator",
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.grey.withOpacity(0.5),
    ),
    ),
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SelectedGender(),
            SizedBox(
              height: 80,
            ),
            CustomSlider(sliderTitle:'Weight',dimension: weight,onTab: (double newValue){
              setState(() {
                weight = newValue.round();
              });

            },),
            SizedBox(
              height: 60,
            ),
            CustomSlider(sliderTitle:'Height',dimension:height,onTab: (double newValue){
              setState(() {
                height = newValue.round();
              });

            },),
            SizedBox(height: 70,),
            Center(
              child:ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 280, height: 70),
                child: ElevatedButton(
                  child: Text("Calculate",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            //side: BorderSide(color: Colors.green)
                          )
                      )
                  ), onPressed: () {
                  bmiModel = BmiModel(height: height ,weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        bmiResult:  bmiModel.calculateBMI(),
                        textResult:  bmiModel.getResult(),
                      ),
                    ),
                  );

                },
                ),
              ),
            ),




          ],
        ),
      ),

    );
  }
}

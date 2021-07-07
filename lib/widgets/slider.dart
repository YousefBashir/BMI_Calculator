import 'package:bmi_calculator/models/BMI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  String sliderTitle;
  int dimension;
  Function onTab;

  CustomSlider({this.sliderTitle, this.dimension,this.onTab});

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            widget.sliderTitle,
            style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.greenAccent,
            inactiveTrackColor: Colors.grey.shade200,
            thumbColor: Colors.greenAccent,
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 12.0,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30.0,
            ),
          ),
          child: Slider(
            value: widget.dimension.toDouble(),
            min: 0,
            max: 300.0,
            onChanged: widget.onTab ,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              widget.dimension.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.greenAccent),
            ),
            SizedBox(width: 5),
            Text(
              'Cm',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.grey.shade500),
            )
          ],
        ),
      ],
    );
  }
}

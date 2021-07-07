import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class SelectedGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Select your Gender",
            style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GroupButton(
          buttonHeight: 50,
          buttonWidth: 120,
          selectedColor: Colors.greenAccent,
          borderRadius: BorderRadius.circular(18.0),
          spacing: 20,
          direction: Axis.horizontal,
          buttons: ["Male", "Female"],
        ),

      ],
    );
  }


}

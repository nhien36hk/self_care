import 'package:flutter/material.dart';
import 'package:self_care/utils/constants.dart';

class FeelingWidget extends StatelessWidget {
  FeelingWidget({
    super.key,
    required this.emoji,
    required this.title,
  });

  String emoji;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            emoji,
            style: TextStyle(fontSize: 25),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Constants.grey
          ),
          padding: EdgeInsets.all(10),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ],
    );
  }
}

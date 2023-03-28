import 'package:flutter/material.dart';

import 'package:register/pallate.dart';
import 'package:register/screens/home_page.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
    required Color color,
    
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 145, 0, 0),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,
            style: kBodyText,
          ),
        ),
      ),
    );
  }

  static styleFrom({required EdgeInsets padding, required Color primary}) {}
}

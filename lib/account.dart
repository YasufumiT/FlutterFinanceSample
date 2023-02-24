import 'package:flutter/material.dart';

class CustomAccount extends StatelessWidget {
  const CustomAccount({
    Key? key,
    required this.text,
    required this.moneyText,
    required this.colors1,
    required this.colors2,
  }) : super(key: key);
  final String text;
  final String moneyText;
  final Color colors1;
  final Color colors2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            colors1,
            colors2,
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            moneyText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

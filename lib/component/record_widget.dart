import 'package:flutter/material.dart';
import 'package:flutter_finance_sample/record.dart';

class CustomRecord extends StatelessWidget {
  const CustomRecord({
    Key? key,
    required this.recordsLength,
    required this.changeAccodingToCategory,
  }) : super(key: key);
  final int recordsLength;
  final IconData changeAccodingToCategory;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 30,
            bottom: 10,
          ),
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 15,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      records[recordsLength].category,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      records[recordsLength].date,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      records[recordsLength].acountType,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$${records[recordsLength].amount}",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          bottom: 10,
          child: Container(
            width: 90,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.redAccent,
              ]),
              color: Colors.red,
            ),
            child: Icon(
              changeAccodingToCategory,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}

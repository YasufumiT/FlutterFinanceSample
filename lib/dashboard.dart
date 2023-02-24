import 'package:flutter/material.dart';
import 'package:flutter_finance_sample/account.dart';
import 'package:flutter_finance_sample/record.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black45,
          size: 30,
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: Text(
          "DashBoard",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
              Positioned(
                top: 10,
                left: 13,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "List of Acount",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: CustomAccount(
                      text: "Bank Acount",
                      moneyText: "\$ 1500",
                      colors1: Colors.purple,
                      colors2: Colors.purpleAccent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomAccount(
                      text: "Credit Card",
                      moneyText: "\$ 2500",
                      colors1: Colors.green,
                      colors2: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomAccount(
                      text: "Cash",
                      moneyText: "\$ 500",
                      colors1: Colors.pink,
                      colors2: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "\$ 4500.00",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Last Record Overview",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: records.length,
                  itemBuilder: (_, i) {
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
                                      records[i].category,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      records[i].date,
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
                                      records[i].acountType,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$${records[i].amount}",
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
                                Colors.purple,
                                Colors.purpleAccent,
                              ]),
                              color: Colors.red,
                            ),
                            child: Icon(
                              changeAccodingToCategory(records[i].category),
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  IconData changeAccodingToCategory(category) {
    if (category == "Groceries") {
      return Icons.shopping_cart;
    } else if (category == "Cloth") {
      return Icons.close_sharp;
    } else {
      return Icons.bathtub;
    }
  }
}

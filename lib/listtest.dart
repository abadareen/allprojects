import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTest extends StatefulWidget {
  ListTest({Key key}) : super(key: key);
  List infoList = ['Name', 'Amount:', 'Date:'];
  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              getItems('Alaa souqi ', 'Amount:15JD', ' Date:14/7/2022', width,
                  height),
              SizedBox(),
              getItems('Obada qafisheh ', 'Amount:18JD', ' Date:14/7/2022',
                  width, height),
              getItems('Ali Alialbadareen ', 'Amount:20JD', ' Date:14/7/2022',
                  width, height),
              getItems('Rashed ALbadareen ', 'Amount:25JD', ' Date:14/7/2022',
                  width, height),
              getItems('Asem Yahya', 'Amount:30JD', ' Date:14/7/2022', width,
                  height),
            ],
          )
        ],
      ),
    );
  }
}

getItems(name, amount, date, width, height) {
  return Padding(
    padding: EdgeInsets.only(top: height * 0.05),
    child: Container(
      width: width - 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.03),
        color: Colors.white,
        border: Border.all(
            color: Colors.grey, style: BorderStyle.solid, width: width * 0.005),
      ),
      height: height * 0.22 + width * 0.05,
      child: Padding(
        padding: EdgeInsets.only(
          left: width * 0.025,
          top: height * 0.012,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Color(0xff262765),
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.05),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.025),
              child: Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                        color: Color(0xff595959), fontSize: width * 0.04),
                  ),
                  SizedBox(width: width / 5),
                  Container(
                    height: height * 0.07,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      color: Color(0xffD0041D),
                    ),
                    child: Center(
                      child: Text('Accept',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.04)),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.02),
                      color: Color(0xff34c75a),
                    ),
                    child: Center(
                      child: Text(
                        'Reject',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              date,
              style:
                  TextStyle(color: Color(0xff595959), fontSize: width * 0.04),
            ),
            SizedBox(
              height: height * 0.002,
            )
          ],
        ),
      ),
    ),
  );
}

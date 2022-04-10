import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Lemon extends StatefulWidget {
  String img, im;
  Lemon({this.img, this.im});

  @override
  State<Lemon> createState() => _LemonState();
}

class _LemonState extends State<Lemon> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        foodCard(
            widget.img,
            '\$18.85',
            'Big single avocado fresh imported fruits from the Mexican Avocado collection',
            '0xFF57874E',
            width,
            height),
        foodCard(
            widget.im,
            '\$18.85',
            'Big single avocado fresh imported fruits from the Mexican Avocado collection',
            '0xFF8FC03A',
            width,
            height),
      ],
    );
  }

  foodCard(String imgPath, String price, String desc, String cardColor, height,
      width) {
    return Padding(
        padding: EdgeInsets.all(
          width * .02,
        ),
        child: Container(
          height: height / 5,
          width: width / 2.5,
          decoration: BoxDecoration(
            color: Color(
              int.parse(
                cardColor,
              ),
            ),
            borderRadius: BorderRadius.circular(width * 0.05),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Image(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                height: height / 4,
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                price,
                style: TextStyle(color: Colors.white, fontSize: width * 0.05),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.009,
                ),
                child: Text(desc,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.03,
                    )),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: height * 0.05,
                  width: width / 3,
                  decoration: BoxDecoration(
                    color: Color(0xff89ac83),
                    borderRadius: BorderRadius.circular(height * 0.03),
                  ),
                  child: Center(
                      child: Text('Add to cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.03,
                          ))),
                ),
              ),
            ],
          ),
        ));
  }
}

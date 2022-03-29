import 'package:flutter/material.dart';

class FruitSecond extends StatefulWidget {
  const FruitSecond({Key key}) : super(key: key);

  @override
  State<FruitSecond> createState() => _FruitSecondState();
}

class _FruitSecondState extends State<FruitSecond> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                getFoodCard('assets/image/picone.jpeg', 'orange', '0.75', true),
                getFoodCard('assets/image/pictwo.jpeg', 'kiwi', '0.25', true),
                getFoodCard(
                    'assets/image/picthree.jpeg', 'banana', '0.75', true),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                getFoodCard(
                    'assets/image/picfour.jpeg', 'pineapple', '0.75', true),
                getFoodCard('assets/image/picfive.jpeg', 'lemon', '0.75', true),
                getFoodCard('assets/image/picone.jpeg', 'banana', '0.75', true),
              ],
            )
          ],
        )
      ],
    );
  }

  getFoodCard(String imgPath, String fruitName, String price, bool isFav) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width / 2 - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.0)
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: isFav
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            )),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              fruitName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$' + price + ' each',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

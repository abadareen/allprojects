import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Discovery',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
            color: Colors.grey,
            onPressed: () {},
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              children: [
                listItem(
                    'assets/image/model1.jpeg', 'assets/image/chanellogo.jpg'),
                SizedBox(
                  width: 35,
                ),
                listItem(
                    'assets/image/model2.jpeg', 'assets/image/chloelogo.png'),
                SizedBox(
                  width: 35,
                ),
                listItem('assets/image/model3.jpeg',
                    'assets/image/louisvuitton.jpg'),
                SizedBox(
                  width: 35,
                ),
                listItem('assets/image/modelgrid2.jpeg',
                    'assets/image/chanellogo.jpg'),
                SizedBox(
                  width: 35,
                ),
                listItem('assets/image/modelgrid3.jpeg',
                    'assets/image/chanellogo.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }

  listItem(String imagePath, String logo) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                )),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF916144),
            ),
            child: Center(
              child: Text(
                'Follow',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ))
      ],
    );
  }
}

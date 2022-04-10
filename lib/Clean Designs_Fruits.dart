import 'package:card/fruit.dart';
import 'package:flutter/material.dart';

class Frut extends StatefulWidget {
  const Frut({Key key}) : super(key: key);

  @override
  State<Frut> createState() => _FrutState();
}

class _FrutState extends State<Frut> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  // ignore: must_call_super
  void initState() {
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext contex) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Icon(
                  Icons.menu,
                  size: (width * 0.04) + (height * 0.008),
                  color: Colors.grey,
                ),
              ),
              Container(
                  height: height * 0.06,
                  width: (width / 2) - 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          (height * 0.08) + (width * 0.08)),
                      color: Colors.grey.withOpacity(0.5)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      enabled: true,
                      hintText: "enter the frutis",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search,
                          color: Colors.grey,
                          size: (width * 0.05) + (height / 60)),
                    ),
                  )),
              Icon(
                Icons.shopping_cart,
                size: (width * 0.054) + (height * 0.005),
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: height * 0.008,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              'All Frutis',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.05),
            ),
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            automaticIndicatorColorAdjustment: true,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Avogado',
                  style: TextStyle(fontSize: width * 0.05),
                ),
              ),
              Tab(
                child: Text(
                  'Garpes',
                  style: TextStyle(fontSize: width * 0.05),
                ),
              ),
              Tab(
                child: Text(
                  'Apple',
                  style: TextStyle(fontSize: width * 0.05),
                ),
              ),
              Tab(
                child: Text(
                  'Grapefruit',
                  style: TextStyle(fontSize: width * 0.05),
                ),
              ),
            ],
          ),
          Container(
            height: height - 150,
            child: TabBarView(controller: tabController, children: [
              Lemon(img: 'assets/image/6.png', im: 'assets/image/1.png'),
              Lemon(img: 'assets/image/3.png', im: 'assets/image/2.png'),
              Lemon(img: 'assets/image/4.png', im: 'assets/image/3.png'),
              Lemon(img: 'assets/image/5.png', im: 'assets/image/4.png')
            ]),
          ),
          SizedBox(
            height: height * 0.008,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * .03,
            ),
            child: Text(
              'Sales',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.04),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildFoodItem('assets/image/1.png', '80', '13.88'),
                _buildFoodItem('assets/image/2.png', '50', '15.00'),
                _buildFoodItem('assets/image/3.png', '30', '20.3'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String discount, String price) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Stack(
      children: <Widget>[
        Container(
          height: 125.0,
          width: 125.0,
        ),
        Positioned(
            left: 15.0,
            child: Container(
              height: 20.0,
              width: 25.0,
              decoration: BoxDecoration(
                  color: Color(0xFFD2691F),
                  borderRadius: BorderRadius.circular(7.0)),
            )),
        Positioned(
            top: 7.0,
            child: Container(
                height: 110.0,
                width: 125.0,
                decoration: BoxDecoration(
                    color: Color(0xFFAAC2A5),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(children: [
                  SizedBox(height: 10.0),
                  Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    height: 70.0,
                  ),
                  Text(price,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ]))),
        Positioned(
            left: 15.0,
            child: Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFE9741),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        bottomRight: Radius.circular(7.0),
                        bottomLeft: Radius.circular(7.0))),
                child: Center(
                    child: Text(discount + '%',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 9.0,
                            color: Colors.white))))),
      ],
    ),
  );
}

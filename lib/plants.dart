import 'package:card/secondplant.dart';
import 'package:flutter/material.dart';

class Plant extends StatefulWidget {
  const Plant({Key key}) : super(key: key);

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            width: width,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.02, right: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.menu,
                      color: Colors.grey,
                      size: width * 0.1,
                    ),
                  ),
                  FloatingActionButton(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      mini: true,
                      elevation: 0,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                        size: width * 0.070,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.02),
            child: Text(
              'Top Picks',
              style: TextStyle(
                  fontSize: width * 0.08,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.02, top: height * 0.05),
            child: TabBar(
              controller: controller,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicator: BoxDecoration(
                  color: Color(0xff399d63),
                  borderRadius: BorderRadius.circular(20)),
              tabs: [
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(fontSize: width * 0.05),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(fontSize: width * 0.05),
                  ),
                ),
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(fontSize: width * 0.05),
                  ),
                ),
                Tab(
                  child: Text(
                    'Plant',
                    style: TextStyle(fontSize: width * 0.05),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Container(
                  height: height - 150,
                  child: TabBarView(controller: controller, children: [
                    SecoPlant(),
                    SecoPlant(),
                    SecoPlant(),
                    SecoPlant(),
                  ]),
                ),
              ),
              Positioned(
                top: height / 1.75,
                left: width * 0.27,
                child: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black),
                  child: Center(
                      child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: width * 0.10,
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

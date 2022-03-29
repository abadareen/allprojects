import 'package:card/fruitSecond.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  const Fruits({Key key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: DecorationImage(
                              image: AssetImage('assets/image/picsix.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    PopupMenuButton(
                      onCanceled: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      icon: Icon(
                        Icons.menu,
                      ),
                      itemBuilder: (BuildContext) => [
                        PopupMenuItem(
                            child: ListTile(
                          leading: Icon(
                            Icons.exit_to_app_sharp,
                            color: Colors.black,
                            size: 25,
                          ),
                          title: Text(
                            'LogOut',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey.withOpacity(0.6),
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          'Fruits',
                          style: TextStyle(
                              fontSize: 33.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Bread',
                          style: TextStyle(
                              fontSize: 33.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Drink',
                          style: TextStyle(
                              fontSize: 33.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: [
                FruitSecond(),
                FruitSecond(),
                FruitSecond(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  child: Text(
                    'Filters',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
              Container(
                height: 45,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

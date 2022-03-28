import 'package:card/guess_you_like.dart';
import 'package:flutter/material.dart';

class Take extends StatefulWidget {
  const Take({Key key}) : super(key: key);

  @override
  State<Take> createState() => _TakeState();
}

class _TakeState extends State<Take> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 2.0),
              ], color: Colors.white),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.settings),
                color: Colors.black.withOpacity(0.7),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: 50.0,
              left: 15.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        image: DecorationImage(
                            image: AssetImage('assets/image/orangemodel.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Joccb Coleman',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFE6E22)),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: Color(0xFFC6CC40)),
                          Container(
                            width: MediaQuery.of(context).size.width - 175.0,
                            child: Text(
                              'Building 5104, 18 Street',
                              style:
                                  TextStyle(fontSize: 14.0, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 175.0,
                        child: Text(
                          '13 Hudson Estuary, Freedom Island, New York Harbour',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: TabBar(
                controller: tabController,
                indicatorColor: Color(0xFFFE6E22),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Color(0xFFFE6E22),
                indicatorWeight: 4,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      'Guess you like',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'News',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Coupon',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Container(
            height: MediaQuery.of(context).size.height - 275,
            child: TabBarView(controller: tabController, children: <Widget>[
              Guess(),
              Guess(),
              Guess(),
            ]),
          )
        ],
      ),
    );
  }
}

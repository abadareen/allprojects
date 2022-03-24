import 'package:card/secondFastion.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
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
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 4.0,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/second');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage('assets/image/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Daisy',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  '34 min ago',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'This official website features a ribbed  knit  zipper jacket that is modern and stylish, it looks very temparament and recomended to friends',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondPage(
                                  heroTag: 'assets/image/modelgrid1.jpeg')));
                        },
                        child: Hero(
                          tag: 'assets/image/modelgrid1.jpeg',
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/modelgrid1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                      heroTag:
                                          'assets/image/modelgrid2.jpeg')));
                            },
                            child: Hero(
                              tag: 'assets/image/modelgrid2.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/modelgrid2.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                      heroTag:
                                          'assets/image/modelgrid2.jpeg')));
                            },
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(
                                        heroTag:
                                            'assets/image/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/image/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            '# Louis vuitton',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            '# Chole',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.grey.withOpacity(0.4),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1.7K',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '325',
                        style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: FavoriteButton(
                          isFavorite: true,
                          valueChanged: (_isFavorite) {
                            print('Is Favorite : $_isFavorite');
                          },
                        ),
                      ),
                      Text(
                        '2.3K',
                        style: TextStyle(color: Colors.grey.withOpacity(0.4)),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: [
            Icon(
              Icons.play_arrow,
              color: Colors.grey,
            ),
            Icon(
              Icons.more,
              color: Colors.grey,
            ),
            Icon(
              Icons.navigation,
              color: Colors.grey,
            ),
            Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
            ),
          ],
        ),
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

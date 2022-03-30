// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProfileSecond extends StatefulWidget {
  const ProfileSecond({Key key}) : super(key: key);

  @override
  State<ProfileSecond> createState() => _ProfileSecondState();
}

class _ProfileSecondState extends State<ProfileSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage('assets/image/picsix.jpeg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Carson Arias',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'san Francisco',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.4), fontSize: 17),
                ),
                SizedBox(height: 20),
                Text(
                    'Hello,i am Carson,i love making cool photo,\nbeautiful architecture and icecream'),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          '1 789',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          '236',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          '990',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/image/pic4.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/image/pic5.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                        height: 100,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/image/pic2.jpeg'),
                                fit: BoxFit.cover))),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/image/pic1.jpeg'),
                                fit: BoxFit.cover))),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/image/pic3.jpeg'),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                        color: Colors.grey.shade300,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        height: 40,
                        minWidth: 190,
                        color: Color.fromARGB(255, 31, 29, 29),
                        child: Text(
                          'FOLLOW',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

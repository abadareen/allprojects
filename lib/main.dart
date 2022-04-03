import 'package:card/anmations.dart';
import 'package:card/awayAndinvisble.dart';
import 'package:card/cakes.dart';
import 'package:card/card.dart';
import 'package:card/carsarvice.dart';
import 'package:card/clean_designs.dart';
import 'package:card/currencyConvert.dart';
import 'package:card/fashion_designs.dart';
import 'package:card/food.dart';
import 'package:card/fruits.dart';
import 'package:card/furniture.dart';
import 'package:card/hairstylist.dart';
import 'package:card/minimalDesigns.dart';
import 'package:card/profile.dart';
import 'package:card/profileSecond.dart';
import 'package:card/rental.dart';
import 'package:card/secondFastion.dart';
import 'package:card/shoppingCart.dart';
import 'package:card/signup.dart';
import 'package:card/stats.dart';
import 'package:card/takeaway.dart';
import 'package:card/travel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'image_coursel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/card': (context) => Cardd(),
        '/anmations': (context) => Anmation(),
        '/profile': (context) => Profile(),
        '/image': (context) => ImageCou(),
        '/travel': (context) => Travel(),
        '/away': (context) => Away(),
        '/signu': (context) => SignupP(),
        '/cha': (context) => Profile(),
        '/food': (context) => Food(),
        '/cake': (context) => cakes(),
        '/fur': (context) => Fur(),
        '/stats': (context) => Stats(),
        '/shop': (context) => ShopCart(),
        '/mini': (context) => MinimalDes(),
        '/home': (context) => MyApp(),
        '/model': (context) => Fashion(),
        '/second': (context) => SecondPage(),
        '/chef': (context) => Chef(),
        '/hair': (context) => Hair(),
        '/take': (context) => Take(),
        '/curr': (context) => Curr(),
        '/fru': (context) => Fruits(),
        '/pro': (context) => ProfileSecond(),
        '/car': (context) => Car(),
        '/rent': (context) => Rental(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.8,
        title: Text(
          'All project',
          style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 30)),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.card_membership,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/card');
                    },
                    child: Text(
                      'Card',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Colors.lightBlueAccent,
                ),
                ListTile(
                  leading: Icon(
                    Icons.animation,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/anmations');
                    },
                    child: Text(
                      'anmations',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank_sharp,
                    size: 30,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/image');
                    },
                    child: Text(
                      'Image coursel',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/profile');
                    },
                    child: Text(
                      'Profile',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.signal_cellular_off_sharp,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/signu');
                    },
                    child: Text(
                      'Signin & Signup',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.travel_explore,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/travel');
                    },
                    child: Text(
                      'Travel',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.offline_bolt,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/away');
                    },
                    child: Text(
                      'away',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank_outlined,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/food');
                    },
                    child: Text(
                      'Food',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.cake,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/cake');
                    },
                    child: Text(
                      'Cakes',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.chair,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/fur');
                    },
                    child: Text(
                      'Furniture',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.design_services,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/mini');
                    },
                    child: Text(
                      'Minimal Designs',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.model_training_outlined,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/model');
                    },
                    child: Text(
                      'Fashion Designs',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.design_services_sharp,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/chef');
                    },
                    child: Text(
                      'Clean designs / Chef profile',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.design_services_sharp,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/hair');
                    },
                    child: Text(
                      'Clean designs / Hairstylist ',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.emoji_food_beverage_sharp,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/take');
                    },
                    child: Text(
                      'Clean designs / Gourmet takeaway',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.money_off,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/curr');
                    },
                    child: Text(
                      'Currency Convert',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.apple,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/fru');
                    },
                    child: Text(
                      'Fruits',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_rounded,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/pro');
                    },
                    child: Text(
                      'ProfileSecond',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_rounded,
                    size: 25,
                    color: Colors.redAccent,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/car');
                    },
                    child: Text(
                      'Car Sarvice',
                      style: GoogleFonts.pacifico(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.lightBlueAccent,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

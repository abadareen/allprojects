import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF399D63)),
              ),
              Positioned(
                top: height / 2,
                child: Container(
                  height: height / 2,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.1, left: width - 60.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF4DA774),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(Icons.shopping_cart,
                      color: Colors.white, size: width * 0.005),
                ),
              ),
              Positioned(
                top: height * 0.2,
                left: width - 30,
                child: Container(
                  height: height * 0.10,
                  width: width * 0.10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xFF399D63),
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.06),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.05, top: height * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'INDOOR',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.042,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      'Ficus',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.08,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: height * 0.03),
                    Text(
                      'FROM',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.042,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: height * 0.010),
                    Text(
                      'SIZES',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.044,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: height * 0.01),
                    Container(
                      height: height * 0.05,
                      width: width * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62),
                          color: Colors.black),
                      child: Center(
                        child: Icon(Icons.shopping_cart, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: (height / 2) - 185.0,
                left: (width / 2) - 80.0,
                child: Image(
                  image: AssetImage('assets/image/ward2.png'),
                  fit: BoxFit.cover,
                  height: height * 0.50,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 150,
                    // left: 20.0,
                    // right: 15.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All to know...',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: height / 14),
                      Text(
                        'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.05,
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        'Plant height: 35-45cm;',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.039,
                        ),
                      ),
                      Text(
                        'Nursery pot width: 12cm',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: width * 0.039,
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

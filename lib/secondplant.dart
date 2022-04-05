import 'package:flutter/material.dart';

class SecoPlant extends StatefulWidget {
  const SecoPlant({Key key}) : super(key: key);

  @override
  State<SecoPlant> createState() => _SecoPlantState();
}

class _SecoPlantState extends State<SecoPlant> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        Container(
          height: height * 0.6,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getPlantCard(
                'assets/image/ward1.png',
                '25',
                'OutDoor',
                'Aloe Vera',
                height,
                width,
              ),
            ],
          ),
        ),
      ],
    );
  }

  getPlantCard(
    String imgPath,
    String price,
    String plantTybe,
    String plantName,
    double height,
    double width,
  ) {
    return Stack(
      children: [
        Container(
          height: height * 0.8,
          width: width / 1.5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff399d63),
                image: DecorationImage(image: AssetImage(imgPath))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.020,
                      ),
                      Text(
                        'FROM',
                        style: TextStyle(
                            fontSize: width * 0.04,
                            color: Color(0xff8ac7a4),
                            fontWeight: FontWeight.w600),
                      ),
                      Text('\$' + price,
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  )
                ],
              ),
              SizedBox(height: height / 2.9),
              Row(
                children: [
                  SizedBox(width: width * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        plantTybe,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: width / 19.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        plantName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.010),
              Row(
                children: [
                  SizedBox(width: width * 0.06),
                  Container(
                    height: height * 0.068,
                    width: width * 0.12,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: width * 0.005),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63)),
                    child: Icon(Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                        size: width * 0.10),
                  ),
                  SizedBox(width: width * 0.03),
                  Container(
                    height: height * 0.068,
                    width: width * 0.12,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: width * 0.005),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63)),
                    child: Icon(Icons.branding_watermark,
                        color: Colors.white.withOpacity(0.4),
                        size: width * 0.10),
                  ),
                  SizedBox(width: width * 0.030),
                  Container(
                    height: height * 0.068,
                    width: width * 0.12,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: width * 0.005),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63)),
                    child: Icon(Icons.hot_tub,
                        color: Colors.white.withOpacity(0.4),
                        size: width * 0.10),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/pla');
                    },
                    child: Container(
                      height: height * 0.068,
                      width: width * 0.12,
                      decoration: BoxDecoration(color: Color(0xFF399D63)),
                      child: Icon(Icons.help_outline,
                          color: Colors.white.withOpacity(0.4),
                          size: width * 0.10),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

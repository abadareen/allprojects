import 'package:flutter/material.dart';

class ImageCou extends StatefulWidget {
  const ImageCou({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ImageCou> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/image/burger1.jpg',
    'assets/image/burger2.jpg',
    'assets/image/burger3.jpg',
    'assets/image/burger4.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 210.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite),
                        color: Colors.pink,
                        onPressed: () {
                          // Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      height: 210.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 210.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Positioned(
                    top: 180.0,
                    left: 5.0,
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 2.0),
                        const Text(
                          '4.0',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 4.0),
                        SelectedPhoto(
                            photoIndex: photoIndex, numberOfDots: photos.length)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'OPEN NOW UNTIL 7PM',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15.0),
                    InkWell(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const Text(
                      'The Cinnamon Snail',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        const Text(
                          '17th st & Union Sq East',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 5.0),
                        const Icon(Icons.location_on),
                        const SizedBox(width: 5.0),
                        Text(
                          '400ft Away',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(height: 7.0),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.wifi, color: Colors.green),
                        SizedBox(width: 4.0),
                        Text(
                          'Location confirmed by 3 users today',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: const <Widget>[
                    Text(
                      'FEATURED ITEMS',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              _buildListItem(photos[0]),
              const SizedBox(height: 10.0),
              _buildListItem(photos[1]),
              const SizedBox(height: 10.0),
              _buildListItem(photos[2]),
              const SizedBox(height: 10.0),
              _buildListItem(photos[3]),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String picture) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(picture), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
            ),
            const SizedBox(width: 10.0),
            Container(
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Maple Mustard Tempeh',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Marinated kale, onion, tomato and roasted',
                    style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    'garlic aioli on grilled spelt bread',
                    style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$11.25',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  // ignore: use_key_in_widget_constructors
  const SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

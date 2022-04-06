import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Scroll> {
  ScrollController _scrollController;

  List allSlides = [
    {'slideName': 'slideOne', 'selected': false},
    {'slideName': 'slideTwo', 'selected': false},
    {'slideName': 'slideThree', 'selected': false},
    {'slideName': 'slideFour', 'selected': false},
    {'slideName': 'slideFive', 'selected': false},
    {'slideName': 'slideSix', 'selected': false},
    {'slideName': 'slideSeven', 'selected': false},
    {'slideName': 'slideEight', 'selected': false},
    {'slideName': 'slideNine', 'selected': false}
  ];

  var selectedSlide;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = allSlides[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollVal / allSlides.length) + 20;

    var scrollValue = _scrollController.offset.floor();
    var slideValue = (scrollValue / divisor).floor();

    var currentSlide = allSlides.indexWhere((slide) => slide['selected']);

    setState(() {
      allSlides[currentSlide]['selected'] = false;
      selectedSlide = allSlides[slideValue];
      selectedSlide['selected'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Scroll Tricks',
            style: TextStyle(fontSize: width * 0.06),
          ),
          iconTheme: IconThemeData(color: Colors.white, size: width * 0.08),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            SizedBox(width: width * 0.02),
            Container(
              width: width / 3,
              child: ListView(
                  children: allSlides.map((element) {
                return getTitles(element, height, width);
              }).toList()),
            ),
            SizedBox(width: width * 0.01),
            Container(
              width: (width / 3) * 2 - 25.0,
              child: ListView(
                controller: _scrollController,
                children: allSlides.map((element) {
                  return getCards(element, height, width);
                }).toList(),
              ),
            )
          ],
        ));
  }

  Widget getCards(slide, height, width) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.01, right: width * 0.05),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: width * 0.001),
        ),
        height: height * 0.45,
        child: Center(
          child: Text(
            slide['slideName'],
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.08),
          ),
        ),
      ),
    );
  }

  scrollToSlide(inputSlide) {
    var whichSlide = allSlides
        .indexWhere((slide) => slide['slideName'] == inputSlide['slideName']);

    var maxScrollValue = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollValue / allSlides.length) + 20;

    var scrollToValue = whichSlide * divisor;

    _scrollController.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: Duration(milliseconds: 1000));
  }

  Widget getTitles(slide, height, width) {
    return InkWell(
      onTap: () {
        scrollToSlide(slide);
      },
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.06),
        child: Text(
          slide['slideName'],
          style: TextStyle(
              fontWeight:
                  slide['selected'] ? FontWeight.bold : FontWeight.normal,
              fontSize: width * 0.05),
        ),
      ),
    );
  }
}

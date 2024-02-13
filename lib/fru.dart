import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:kidslearning/data/draggable_advanced_page.dart';
// import 'package:kidslearning/data1/draggable_advanced_page.dart';

class fru extends StatefulWidget {
  _fru createState() => _fru();
}

class _fru extends State<fru> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb86666),
        title: Text("FRUITS", style: TextStyle(color: Color(0xffffffff))),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 5, left: 0, top: 5, bottom: 5),
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xfffde2d4),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: FittedBox(
                child: Image.asset('assets/fru/orange.png'),
              ))
        ],
      ),
      body: ListView(
        children: [
          // Container(
          //   child: Stack(
          //     children: [
          //       GestureDetector(
          //         child: Container(
          //           margin:
          //               EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          //           width: MediaQuery.of(context).size.width * 1,
          //           height: 60,
          //           decoration: BoxDecoration(
          //             color: Color(0xffd7bbf3),
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //           ),
          //         ),
          //         onTap: () {
          //           //  _interstitialAd.show();
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => DraggableAdvancedPage()),
          //           );
          //           //    _interstitialAd.show();
          //         },
          //       ),
          //       GestureDetector(
          //           child: Container(
          //             margin: EdgeInsets.only(left: 30, top: 10),
          //             alignment: Alignment.topLeft,
          //             child: Image.asset(
          //               'assets/mobile.png',
          //               height: 50,
          //               width: 50,
          //             ),
          //           ),
          //           onTap: () {
          //             //  _interstitialAd.show();
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => DraggableAdvancedPage()),
          //             );
          //             //    _interstitialAd.show();
          //           }),
          //       Padding(
          //         padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
          //         child: GestureDetector(
          //             child: Align(
          //                 alignment: Alignment.center,
          //                 child: new Text("Activity Section",
          //                     style: TextStyle(
          //                         fontSize: 25,
          //                         color: Color(0xfffbfafc),
          //                         fontFamily: "Chewy"))),
          //             onTap: () {
          //               //  _interstitialAd.show();
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => DraggableAdvancedPage()),
          //               );
          //               //    _interstitialAd.show();
          //             }),
          //       ),
          //       Container(
          //           margin: EdgeInsets.only(right: 30, top: 15),
          //           alignment: Alignment.topRight,
          //           child: GestureDetector(
          //               child: Image.asset(
          //                 'assets/right-arrow.png',
          //                 height: 40,
          //                 width: 40,
          //               ),
          //               onTap: () {
          //                 //  _interstitialAd.show();
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) => DraggableAdvancedPage()),
          //                 );
          //                 //    _interstitialAd.show();
          //               })),
          //     ],
          //   ),
          // ),
          getPageContainer(
              17, 'assets/fru/grape.png', 'GRAPE', '', Color(0xfff3a4bd)),
          getPageContainer(1, 'assets/fru/strawberry.png', 'STRAWBERRY', '',
              Color(0xff5ea6a8)),
          getPageContainer(
              0, 'assets/fru/mango.png', 'MANGO', '', Color(0xff9c394d)),
          getPageContainer(2, 'assets/fru/blueberry.png', 'BLUEBERRY', '',
              Color(0xfffde086)),
          getPageContainer(
              3, 'assets/fru/banana.png', 'BANANA', '', Color(0xffa75d31)),
          getPageContainer(
              4, 'assets/fru/guava.png', 'GUAVA', '', Color(0xff3d5c33)),
          getPageContainer(
              5, 'assets/fru/plum.png', 'PLUM', '', Color(0xffefb6a8)),
          getPageContainer(6, 'assets/fru/raspberry.png', 'RASPBERRY', '',
              Color(0xfffcca51)),
          getPageContainer(
              7, 'assets/fru/date.png', 'DATE', '', Color(0xff477d9a)),
          getPageContainer(
              8, 'assets/fru/lime.png', 'LIME', '', Color(0xff662d07)),
          getPageContainer(
              9, 'assets/fru/cherry.png', 'CHERRY', '', Color(0xffc99ddb)),
          getPageContainer(12, 'assets/fru/watermelon.png', 'WATERMELON', '',
              Color(0xff3f9cb3)),
          getPageContainer(
              10, 'assets/fru/orange.png', 'ORANGE', '', Color(0xff6f9e65)),
          getPageContainer(
              11, 'assets/fru/apple.png', 'APPLE', '', Color(0xfff6b614)),
          getPageContainer(
              13, 'assets/fru/apricot.png', 'APRICOAT', '', Color(0xff7b676d)),
          getPageContainer(
              15, 'assets/fru/berries.png', 'BERRIES', '', Color(0xfff8c977)),
          getPageContainer(
              16, 'assets/fru/coconut.png', 'COCONUT', '', Color(0xff203045)),
          getPageContainer(
              17, 'assets/fru/kiwi.png', 'KIWI', '', Color(0xff6e8947)),
          getPageContainer(
              14, 'assets/fru/papaya.png', 'PAPAYA', '', Color(0xffc44e66)),
          getPageContainer(
              18, 'assets/fru/pear.png', 'PEAR', '', Color(0xff6898aa)),
          getPageContainer(19, 'assets/fru/pineapple.png', 'PINEAPPLE', '',
              Color(0xfffdca49)),
          getPageContainer(20, 'assets/fru/pomegranate.png', 'POMEGRANATE', '',
              Color(0xffeccbd9)),
        ],
      ),
      backgroundColor: Color(0xFFffffff),
    );
  }

  Container getPageContainer(
      int id, String imgName, String Title, String subtext, Color colorx) {
    return Container(
        height: MediaQuery.of(context).size.height / 4.6,
        width: MediaQuery.of(context).size.width / 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: colorx,
        ),
        margin: EdgeInsets.only(
          left: 7,
          right: 7,
          top: 15,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -65,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, right: 10, left: 20, bottom: 10),
                child: Image(
                  image: AssetImage(
                    '$imgName',
                  ),
                  height: MediaQuery.of(context).size.height / 4.5,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          Title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Chewy',
                          ),
                        ),
                        margin: EdgeInsets.only(left: 130, top: 20),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(subtext,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Chewy',
                          fontSize: 19,
                        )),
                    margin: EdgeInsets.only(left: 100, top: 22),
                  ),
                ],
              ),
            )
          ],
          // overflow: Overflow.visible,
        ));
  }
}

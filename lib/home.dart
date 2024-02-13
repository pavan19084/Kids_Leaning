// import 'package:flutter/material.dart';
// import 'package:kids_learning/abc.dart';
// import 'package:kids_learning/animal.dart';
// import 'package:kids_learning/fru.dart';
// import 'package:kids_learning/matching.dart';
// import 'package:kids_learning/num.dart';
// import 'package:kids_learning/veg.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.menu),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Text('School Quiz'),
//           bottom: PreferredSize(
//             preferredSize: Size.fromHeight(80),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               alignment: Alignment.centerLeft,
//               child: buildWelcome('username'),
//             ),
//           ),
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff604966), Color(0xff604966)],
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//               ),
//             ),
//           ),
//         ),
//         body: ListView(
//           physics: BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(16),
//           children: [
//             SizedBox(height: 8),
//             buildCategories(context),
//             SizedBox(height: 32),
//             // buildPopular(context),
//           ],
//         ),
//       );

//   Widget buildWelcome(String username) => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hello',
//             style: TextStyle(fontSize: 16, color: Colors.white),
//           ),
//           Text(
//             username,
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           )
//         ],
//       );

//   Widget buildCategories(BuildContext context) => Container(
//         height: MediaQuery.of(context).size.height * 0.77,
//         child: GridView.count(
//           crossAxisCount: 2,
//           padding: EdgeInsets.all(6.0),
//           shrinkWrap: true,
//           crossAxisSpacing: 12.0,
//           mainAxisSpacing: 12.0,
//           childAspectRatio: 3 / 3,
//           children: <Widget>[
//             GestureDetector(
//               child: (myGridItems(
//                 "ALPHABETS",
//                 "assets/abc.png",
//                 (0xfff6d7c9),
//                 (0xfff6d7c9),
//               )),
//               onTap: () {
//                 //    _interstitialAd.show();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => abc()),
//                 );
//               },
//             ),
//             GestureDetector(
//               child: (myGridItems(
//                 "NUMBERS",
//                 "assets/countdown (1).png",
//                 (0xffb6cff3),
//                 (0xffb6cff3),
//               )),
//               onTap: () {
//                 //  _interstitialAd.show();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => num()),
//                 ); //_interstitialAd.show();
//               },
//             ),
//             GestureDetector(
//                 child: (myGridItems(
//                     "FRUITS", "assets/fruit.png", (0xffb7eee6), (0xffb7eee6))),
//                 onTap: () {
//                   //  _interstitialAd.show();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => fru()),
//                   );
//                   //    _interstitialAd.show();
//                 }),
//             GestureDetector(
//               child: (myGridItems("ANIMALS", "assets/elephant.png",
//                   (0xfffaefa6), (0xfffaefa6))),
//               onTap: () {
//                 //  _interstitialAd.show();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ani()),
//                 );
//                 //_interstitialAd.show();
//               },
//             ),
//             GestureDetector(
//                 child: (myGridItems("VEGETABLES", "assets/vegetable.png",
//                     (0xffffcad8), (0xffffcad8))),
//                 onTap: () {
//                   //  _interstitialAd.show();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => veg()),
//                   );
//                   //    _interstitialAd.show();
//                 }),
//             GestureDetector(
//                 child: (myGridItems("MATCHING", "assets/puzzle.png",
//                     (0xffdcdedc), (0xffdcdedc))),
//                 onTap: () {
//                   //  _interstitialAd.show();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ColorGame()),
//                   );
//                   //    _interstitialAd.show();
//                 }),
//             GestureDetector(
//                 child: (myGridItems("POEMS", "assets/keyboard.png",
//                     (0xffe0f5bb), (0xffe0f5bb))),
//                 onTap: () {
//                   //  _interstitialAd.show();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => abc()),
//                   );
//                   //    _interstitialAd.show();
//                 }),
//             GestureDetector(
//                 child: (myGridItems(
//                     "QUIZ", "assets/stacking.png", (0xffc1c0e2), (0xffc1c0e2))),
//                 onTap: () {
//                   //  _interstitialAd.show();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => abc()),
//                   );
//                   //    _interstitialAd.show();
//                 }),
//           ],
//         ),
//       );

//   Widget myGridItems(
//       String gridName, String gridimage, int color1, int color2) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           gradient: new LinearGradient(
//             colors: [
//               Color(color1),
//               Color(color2),
//             ],
//             begin: Alignment.centerLeft,
//             end: new Alignment(1.0, 1.0),
//           )),
//       child: Stack(
//         children: [
//           Opacity(
//             opacity: 0.9,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child:
//                   Center(child: Image.asset(gridimage, height: 90, width: 90)),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [Container()],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 126.0),
//                 child: Text(
//                   gridName,
//                   style: TextStyle(
//                       color: Color(0xff604966),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:kidslearning/abc.dart';
import 'package:kidslearning/animal.dart';
import 'package:kidslearning/fru.dart';
import 'package:kidslearning/matching.dart';
import 'package:kidslearning/num.dart';
import 'package:kidslearning/poem.dart';
import 'package:kidslearning/veg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('School Quiz'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome('username'),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff604966), Color(0xff604966)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(height: 8),
            buildCategories(context),
            SizedBox(height: 32),
            // buildPopular(context),
          ],
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            username,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget buildCategories(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.77,
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(6.0),
          shrinkWrap: true,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: 3 / 3,
          children: <Widget>[
            GestureDetector(
              child: (myGridItems(
                "ALPHABETS",
                "assets/abc.png",
                (0xfff6d7c9),
                (0xfff6d7c9),
              )),
              onTap: () {
                //    _interstitialAd.show();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => abc()),
                );
              },
            ),
            GestureDetector(
              child: (myGridItems(
                "NUMBERS",
                "assets/countdown (1).png",
                (0xffb6cff3),
                (0xffb6cff3),
              )),
              onTap: () {
                //  _interstitialAd.show();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => number()),
                ); //_interstitialAd.show();
              },
            ),
            GestureDetector(
                child: (myGridItems(
                    "FRUITS", "assets/fruit.png", (0xffb7eee6), (0xffb7eee6))),
                onTap: () {
                  //  _interstitialAd.show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fru()),
                  );
                  //    _interstitialAd.show();
                }),
            GestureDetector(
              child: (myGridItems("ANIMALS", "assets/elephant.png",
                  (0xfffaefa6), (0xfffaefa6))),
              onTap: () {
                //  _interstitialAd.show();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ani()),
                );
                //_interstitialAd.show();
              },
            ),
            GestureDetector(
                child: (myGridItems("VEGETABLES", "assets/vegetable.png",
                    (0xffffcad8), (0xffffcad8))),
                onTap: () {
                  //  _interstitialAd.show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => veg()),
                  );
                  //    _interstitialAd.show();
                }),
            GestureDetector(
                child: (myGridItems("MATCHING", "assets/puzzle.png",
                    (0xffdcdedc), (0xffdcdedc))),
                onTap: () {
                  //  _interstitialAd.show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorGame()),
                  );
                  //    _interstitialAd.show();
                }),
            GestureDetector(
                child: (myGridItems("POEMS", "assets/keyboard.png",
                    (0xffe0f5bb), (0xffe0f5bb))),
                onTap: () {
                  //  _interstitialAd.show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => poem()),
                  );
                  //    _interstitialAd.show();
                }),
            GestureDetector(
                child: (myGridItems(
                    "QUIZ", "assets/stacking.png", (0xffc1c0e2), (0xffc1c0e2))),
                onTap: () {
                  //  _interstitialAd.show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => abc()),
                  );
                  //    _interstitialAd.show();
                }),
          ],
        ),
      );

  Widget myGridItems(
      String gridName, String gridimage, int color1, int color2) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: new LinearGradient(
            colors: [
              Color(color1),
              Color(color2),
            ],
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 1.0),
          )),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child:
                  Center(child: Image.asset(gridimage, height: 90, width: 90)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Container()],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 126.0),
                child: Text(
                  gridName,
                  style: TextStyle(
                      color: Color(0xff604966),
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

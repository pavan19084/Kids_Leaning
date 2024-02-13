
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class num extends StatefulWidget {

//   _num createState() => _num();
// }

// class _num extends State<num> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Text('NUMBERS', style: TextStyle(color: Color(0xff19293e)),),
//           actions: [
//             Container(
//                 margin: EdgeInsets.only(right: 5, left:0, top:5 , bottom: 5),
//                 width: 50,
//                 decoration: BoxDecoration(
//                   color: Color(0xff450c5f),
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child:
//                 FittedBox(
//                   child: Image.asset('assets/num/1.png',height: 30, width: 30,),
//                 )
//             )
//           ],


//         ),
//         backgroundColor: Color(0xffb6cff3),
//         body:
//         SingleChildScrollView(
//             child:
//             Row(
//                 children:[
//                   Column(
//                       children: [

//                         Container(
//                             color: Color(0xffffffff),
//                             width: MediaQuery.of(context).size.width * 0.40,
//                             height: MediaQuery.of(context).size.height * 0.90,
//                             child:GridView.count(
//                                 crossAxisCount: 2,
//                                 padding: EdgeInsets.all(6.0),

//                                 shrinkWrap: true,

//                                 crossAxisSpacing: 17.0,
//                                 mainAxisSpacing: 17.0,
//                                 childAspectRatio: 2/ 3,
//                                 children: <Widget>[
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/1.png',height: 40, width: 40,)

//                                       ),
//                                       onTap: (){
//                                         //  _interstitialAd.show();
//                                         a(context);

//                                         //    _interstitialAd.show();
//                                       }
//                                   ),
//                                   GestureDetector(
//                                     child:(
//                                         Image.asset('assets/num/2.png',height: 40, width: 40,)

//                                     ),

//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/3.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/4.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/5.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/6.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/7.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/8.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/9.png',height: 40, width: 40,)

//                                       )),
//                                   GestureDetector(
//                                       child:(
//                                           Image.asset('assets/num/10.png',height: 40, width: 40,)

//                                       )),


//                                 ]
//                             )    ),

//                       ]
//                   ),
//                   Column(
//                       children: [

//                         Container(
//                           color: Color(0xffced4e8),
//                           width: MediaQuery.of(context).size.width * 0.60,
//                           height: MediaQuery.of(context).size.height * 0.90,
//                           // a(context))

//                         )

//                       ]

//                   )
//                 ]))
//     );
//   }

//   Widget buildPopular(BuildContext context) => Column(
//     children: [
//       Text('hello people'),
//     ],
//   );

//   Widget a(BuildContext context) => Row(
//     children:[
//       Padding(padding: EdgeInsets.all(30),
//         child:
//         Image.asset('assets/alp/a.png', height: 100,width: 100,),),
//     ],



//   );
// }



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class number extends StatefulWidget {

  _number createState() => _number();
}

class _number extends State<number> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('NUMBERS', style: TextStyle(color: Color(0xff19293e)),),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 5, left:0, top:5 , bottom: 5),
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff450c5f),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:
                FittedBox(
                  child: Image.asset('assets/num/1.png',height: 30, width: 30,),
                )
            )
          ],


        ),
        backgroundColor: Color(0xffb6cff3),
        body:  GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 20),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return Image.asset(
            'assets/num/${index + 1}.png',
            height: 40,
            width: 40,
          );
        },
      ),
    );
  }

  
}


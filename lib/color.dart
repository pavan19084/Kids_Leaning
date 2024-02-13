// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class col extends StatefulWidget {

//   _col createState() => _col();
// }
// void main(){
//   WidgetsFlutterBinding.ensureInitialized();
//   // MobileAds.instance.initialize();
// }

// class _col extends State<col> {

//   AudioPlayer advancedPlayer = AudioPlayer();
//   AudioCache audioCache = AudioCache();

//   @override
//   void initState(){
//     super.initState();
//     initPlayer();
//   }

//   void initPlayer(){
//     advancedPlayer =AudioPlayer();
//     audioCache = AudioCache(fixedPlayer: advancedPlayer);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Text('COLORS ', style: TextStyle(color: Color(0xff380453)),),
//           actions: [
//             Container(
//                 margin: EdgeInsets.only(right: 5, left:0, top:5 , bottom: 5),
//                 width: 50,
//                 decoration: BoxDecoration(
//                   color: Color(0xffffffff),
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child:
//                 FittedBox(
//                   child: Image.asset('assets/colored-pencils.png',height: 30, width: 30,),
//                 )
//             )
//           ],

//         ),
//         backgroundColor: Color(0xfffddce8),
//         body:
//         SingleChildScrollView(
//             child:
//             Row(
//                 children:[
//                   Column(
//                       children: [
//                         Stack(

//                             children:[
//                               GestureDetector(
//                                 child:
//                                 Container(
//                                   margin: EdgeInsets.only(right: 0, left:0, top:3 , bottom: 5),
//                                   width: MediaQuery.of(context).size.width*0.93,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xffaf3f5f),
//                                     borderRadius: BorderRadius.all(Radius.circular(10)),

//                                   ),),
//                               ),

//                               Padding( padding: EdgeInsets.fromLTRB(40, 17,0, 20),
//                                 child:GestureDetector(child:
//                                 Align(alignment: Alignment.center, child: new Text("TAP on Colors for Magic",style:TextStyle(
//                                     fontSize: 19,

//                                     color: Color(0xffe8e8e8),
//                                     fontFamily: "Chewy"
//                                 ))),

//                                 ),),
//                               Container(
//                                   margin: EdgeInsets.only(left:270,top:8),
//                                   alignment: Alignment.topRight,


//                                   child:
//                                   GestureDetector(
//                                     child:
//                                     Image.asset('assets/tap.png',height: 40,width: 40,),

//                                   )
//                               ),

//                             ]
//                         ),

//                         Container(
//                             color: Color(0xffe0e0e0),
//                             width: MediaQuery.of(context).size.width * 1,
//                             height: MediaQuery.of(context).size.height * 0.83,
//                             child:GridView.count(
//                                 crossAxisCount: 2,
//                                 padding: EdgeInsets.all(6.0),

//                                 shrinkWrap: true,

//                                 crossAxisSpacing: 17.0,
//                                 mainAxisSpacing: 17.0,
//                                 childAspectRatio: 2.6/ 3,
//                                 children: <Widget>[
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(1,'BLUE',Color(
//                                               0xff059ecd))
//                                       ),


//                                       onTap: (){
//                                         audioCache.play('audios/blue.mp3');
//                                       }
//                                     // audioCache.load('assets/audios/kid-a.mp3');
//                                     // audioCache.play('assets/audios/kid-a.mp3');
//                                     //  _interstitialAd.show();


//                                     //    _interstitialAd.show();

//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(2,'YELLOW',Color(
//                                               0xfffdcf22))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/yellow.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:( getPageContainer(3,'PURPLE',Color(
//                                           0xff870d6d))


//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/purple.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(4,'RED',Color(
//                                               0xffd40612))


//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/red.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(5,'GREEN',Color(
//                                               0xff7aba20))

//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/green.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(6,'BROWN',Color(
//                                               0xff803f13))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/brown.mp3');
//                                       }
//                                   ),

//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(7,'PINK',Color(
//                                               0xfffc70a2))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/pink.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(8,'ORANGE',Color(
//                                               0xffef7c16))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/orange.mp3');
//                                       }),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer1(9,'WHITE',Color(
//                                               0xffFFFFFF))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/white.mp3');
//                                       }
//                                   ),
//                                   GestureDetector(
//                                       child:(
//                                           getPageContainer(10,'BLACK',Color(
//                                               0xff000000))
//                                       ),
//                                       onTap: (){
//                                         audioCache.play('audios/black.mp3');
//                                       }
//                                   ),


//                                 ]
//                             )    ),

//                       ]
//                   ),
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

//   Container getPageContainer(int id,  String Title, Color colorx) {
//     return Container(height: MediaQuery
//         .of(context)
//         .size
//         .height / 4.6,
//         width: MediaQuery
//             .of(context)
//             .size
//             .width / 0.4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//           color:colorx,
//         ),
//         //  margin: EdgeInsets.only(left: 70, right: 7, top: 15,),
//         child: Stack(
//           children: <Widget>[
//         /*    Positioned(
//                 top: -80,
//                 child: Padding(
//                     padding: const EdgeInsets.only(
//                         top: 90, right: 0, left: 20, bottom: 10),

//                     child: Image(image: AssetImage('$imgName',
//                     ),

//                       height: MediaQuery
//                           .of(context)
//                           .size
//                           .height / 5.5,
//                     ),
//                 )
//             ),*/
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                      Container(

//                         child: Text(Title, style:
//                         TextStyle(
//                           color: Colors.white60,
//                           fontSize: 30,
//                           fontFamily: 'Chewy',

//                         ),),
//                        margin: EdgeInsets.only(left:50, top: 80),

//                       ),

//                     ],
//                   ),

//                 ],
//               ),
//             )
//           ],
//           // overflow: Overflow.visible,
//         )
//     );
//   }

//   Container getPageContainer1(int id,  String Title, Color colorx) {
//     return Container(height: MediaQuery
//         .of(context)
//         .size
//         .height / 4.6,
//         width: MediaQuery
//             .of(context)
//             .size
//             .width / 0.4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//           color:colorx,

//         ),
//         //  margin: EdgeInsets.only(left: 70, right: 7, top: 15,),
//         child: Stack(
//           children: <Widget>[
//             /*    Positioned(
//                 top: -80,
//                 child: Padding(
//                     padding: const EdgeInsets.only(
//                         top: 90, right: 0, left: 20, bottom: 10),

//                     child: Image(image: AssetImage('$imgName',
//                     ),

//                       height: MediaQuery
//                           .of(context)
//                           .size
//                           .height / 5.5,
//                     ),
//                 )
//             ),*/
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(

//                         child: Text(Title, style:
//                         TextStyle(
//                           color: Colors.black26,
//                           fontSize: 30,
//                           fontFamily: 'Chewy',

//                         ),),
//                         margin: EdgeInsets.only(left:50, top: 80),

//                       ),

//                     ],
//                   ),

//                 ],
//               ),
//             )
//           ],
//           // overflow: Overflow.visible,
//         )
//     );
//   }


// }


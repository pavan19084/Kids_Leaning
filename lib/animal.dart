import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ani extends StatefulWidget {
  _ani createState() => _ani();
}

class _ani extends State<ani> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8da9d),
        title: Text("ANIMALS", style: TextStyle(color: Color(0xff534805))),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 5, left: 0, top: 5, bottom: 5),
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff612c1e),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: FittedBox(
                child: Image.asset('assets/ani/owl (1).png'),
              ))
        ],
      ),
      body: ListView(
        children: [
          getPageContainer(
              0, 'cat (1).png', 'CAT', 'DOMESTIC ANIMAL', Color(0xffa75d31)),
          getPageContainer(1, 'giraffe (1).png', 'GIRAFFE', 'WILD ANIMAL',
              Color(0xff82c6d2)),
          getPageContainer(
              2, 'frog (1).png', 'FROG', 'AMPHIBIAN ANIMAL', Color(0xffc44e66)),
          getPageContainer(
              3, 'dog.png', 'DOG', 'PET ANIMAL', Color(0xfffcca51)),
          getPageContainer(
              4, 'koala (1).png', 'KOALA', 'MAMMAL', Color(0xff3d5c33)),
          getPageContainer(5, 'owl (1).png', 'OWL', 'BIRD', Color(0xffefb6a8)),
          getPageContainer(
              6, 'dolphin.png', 'DOLPHIN', 'MAMMAL', Color(0xffe7599c)),
          getPageContainer(
              7, 'rabbit.png', 'RABBIT', 'DOMESTIC', Color(0xff477d9a)),
          getPageContainer(
              8, 'snake.png', 'SNAKE', 'REPTILE', Color(0xff662d07)),
          getPageContainer(
              9, 'penguin (1).png', 'PENGUIN', 'SEABIRD', Color(0xfff6b614)),
          getPageContainer(
              10, 'monkey.png', 'MONKEY', 'MAMMAL', Color(0xff6f9e65)),
          getPageContainer(
              11, 'jellyfish.png', 'JELLY-FISH', 'FISH', Color(0xffc99ddb)),
          getPageContainer(
              12, 'bee (1).png', 'HOENYBEE', 'INSECT', Color(0xff3f9cb3)),
          getPageContainer(13, 'hen (1).png', 'HEN', 'BIRD', Color(0xff7b676d)),
          getPageContainer(
              14, 'snail (1).png', 'SNAIL', 'REPTILE', Color(0xfff8c977)),
          getPageContainer(15, 'shark.png', 'SHARK', 'FISH', Color(0xffc44e66)),
          getPageContainer(
              16, 'octopus.png', 'OCTOPUS', 'FISH', Color(0xff203045)),
          getPageContainer(
              17, 'flamingo.png', 'FLAMINGO', 'BIRD', Color(0xff6e8947)),
          getPageContainer(
              18, 'lion (1).png', 'LION', 'WILD ANIMAL', Color(0xff6898aa)),
          getPageContainer(
              19, 'squirrel.png', 'SQUIRREL', 'RODENT', Color(0xfffdca49)),
          getPageContainer(
              20, 'crab.png', 'CRAB', 'AQUATIC ANIMAL', Color(0xffeccbd9)),
          getPageContainer(
              21, 'turtle (2).png', 'TURTLE', 'REPTILE', Color(0xff76204f)),
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
          top: 25,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                left: -65,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(
                        'assets/ani/$imgName',
                      ),
                      height: MediaQuery.of(context).size.height / 4.5,
                    ))),
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
                            fontSize: 40,
                            fontFamily: 'Chewy',
                          ),
                        ),
                        margin: EdgeInsets.only(left: 120, top: 20),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(subtext,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Chewy',
                          fontSize: 22,
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

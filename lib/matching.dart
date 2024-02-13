import 'package:flutter/material.dart';
import 'dart:math';

class ColorGame extends StatefulWidget {
  createState() => ColorGameState();
}

class ColorGameState extends State<ColorGame> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    '🍊': Color(0xfffca81d),
    '🍇': Color(0xff9b37bb),
    '🐋': Color(0xff6aa2ab),
    '🐸': Color(0xffb6d11a),
    '🍉': Color(0xfff82d4b),
    '🦇': Color(0xff785246),
    '🦩': Color(0xfffb7ea2),
    '🧀': Color(0xfff6c411)
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Matching  Score ${score.length} / 8'),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 5, left: 0, top: 5, bottom: 5),
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff443a38),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FittedBox(
                  child: Image.asset('assets/rgb.png'),
                ))
          ],
          backgroundColor: Color(0xff959191)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: '🌱'),
                );
              }).toList()),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                  ..shuffle(Random(seed)),
          )
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (context, incoming, List rejected) {
        if (score[emoji] == true) {
          return Expanded(
              child: Container(
            color: Colors.white,
            child: Text('Correct!'),
            alignment: Alignment.center,
            height: 60,
            width: 200,
          ));
        } else {
          return SingleChildScrollView(
              child: Container(color: choices[emoji], height: 60, width: 170));
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          // plyr.play('success.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key? key, required this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 90,
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    ));
  }
}

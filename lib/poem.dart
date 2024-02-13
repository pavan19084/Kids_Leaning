import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class poem extends StatefulWidget {
  _poem createState() => _poem();
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
}

class _poem extends State<poem> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();

  @override
  void initState() {
    super.initState();
    // initPlayer();
  }

  void initPlayer() {
    // advancedPlayer = new AudioPlayer();
    // audioCache = new AudioCache(prefix: advancedPlayer);

    // _duration = advancedPlayer.getDuration() as Duration;
    // var du = advancedPlayer.getDuration();
    // _position = advancedPlayer.getCurrentPosition() as Duration;
    // advancedPlayer.durationHandler = (d) => setState(() {
    //   _duration = d;
    // });

    // advancedPlayer.positionHandler = (p) => setState(() {
    //   _position = p;
    // });
    // print("dfvdsfv");
    // print("this is du : $du");
    // print("this i po : $_position");
  }

  late String localFilePath;

  Widget slider() {
    return Slider(
        activeColor: Colors.black,
        inactiveColor: Colors.white,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
      minWidth: 40.0,
      child: Container(
          width: 30,
          margin: EdgeInsets.only(right: 30, top: 155),
          height: 30,
          child: GestureDetector(
            onTap: onPressed,
            child: Image.asset('$txt'),
          )
          /*  RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Image.asset('$txt'),
            color: Colors.transparent,
            textColor: Colors.white,
            onPressed: onPressed), */
          ),
    );
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'ALPHABETS ',
            style: TextStyle(color: Color(0xff681802)),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 5, left: 0, top: 5, bottom: 5),
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xffaa5801),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FittedBox(
                  child: Image.asset(
                    'assets/alp/1.png',
                    height: 30,
                    width: 30,
                  ),
                ))
          ],
        ),
        backgroundColor: Color(0xfff6d7c9),
        body: SingleChildScrollView(
            child: Row(children: [
          Column(children: [
            Stack(children: [
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(right: 0, left: 0, top: 3, bottom: 5),
                  width: MediaQuery.of(context).size.width * 0.93,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff5e2a07),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 17, 0, 20),
                child: GestureDetector(
                  child: Align(
                      alignment: Alignment.center,
                      child: new Text("TAP on Alphabets for Magic",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color(0xfffbfafc),
                              fontFamily: "Chewy"))),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 270, top: 8),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/tap.png',
                      height: 40,
                      width: 40,
                    ),
                  )),
            ]),
            Container(
              color: Color(0xffffffff),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.83,
              child: GridView.count(
                crossAxisCount: 1,
                padding: EdgeInsets.all(7.0),
                shrinkWrap: true,
                childAspectRatio: 1.3,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                children: <Widget>[
                  GestureDetector(
                    child: myGridItems("", "assets/poem/1.gif", (0xFF000000),
                        (0xFF000000), "poem/disco.mp3"),
                    // LocalAudio()
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/2.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/3.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/4.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/5.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                      child: (myGridItems("", "assets/poem/6.gif", (0xFF000000),
                          (0xFF000000), ''))),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/7.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/8.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                  GestureDetector(
                    child: (myGridItems("", "assets/poem/9.gif", (0xFF000000),
                        (0xFF000000), '')),
                  ),
                ],
              ),
            )
          ]),
        ])));
  }

  Widget buildPopular(BuildContext context) => Column(
        children: [
          Text('hello people'),
        ],
      );

  Widget a(BuildContext context) => Row(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Image.asset(
              'assets/alp/a.png',
              height: 100,
              width: 100,
            ),
          ),
        ],
      );

  Widget myGridItems(String gridName, String gridimage, int color1, int color2,
      String poemName) {
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
            opacity: 0.7,
            child: Container(
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: new AssetImage(
                      '$gridimage',
                    ),
                    fit: BoxFit.fill,
                  )),
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
                padding: const EdgeInsets.only(left: 6.0),
                child: Text(
                  gridName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(4.0, 6.0),
                        )
                      ],
                      fontSize: 22),
                ),
              ),
              _tab([
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _btn('assets/poem/play-button.png', () {
                        advancedPlayer.play(AssetSource('$poemName'));
                        // initPlayer();
                      }),
                      _btn(
                        'assets/poem/pause.png',
                        () => advancedPlayer.pause(),
                      ),
                      _btn('assets/poem/stop.png', () => advancedPlayer.stop()),
                    ]),
                slider()
              ])
            ],
          )
        ],
      ),
    );
  }

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          //  padding: EdgeInsets.all(2.0),
          child: Column(
            children: children
                .map((w) => Container(
                    child: w, padding: EdgeInsets.only(right: 20, left: 50)))
                .toList(),
          ),
        ),
      ],
    );
  }
}

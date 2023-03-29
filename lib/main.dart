import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SongbirdsApp());
// void main() {
//   runApp(const XylophoneApp());
// }

class SongbirdsApp extends StatelessWidget {
  const SongbirdsApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Song Birds',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(1);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/까치.png'),
                        ),
                      ),
                      const Text(
                        '까치',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(2);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/꿩.png'),
                        ),
                      ),
                      const Text(
                        '꿩',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(3);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/백조.png'),
                        ),
                      ),
                      const Text(
                        '백조',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(4);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/뻐꾸기.png'),
                        ),
                      ),
                      const Text(
                        '뻐꾸기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(5);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/종달새.png'),
                        ),
                      ),
                      const Text(
                        '종달새',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          playSound(6);
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/참새.png'),
                        ),
                      ),
                      const Text(
                        '참새',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GolosText',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzel_game/modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class gamepage extends StatefulWidget {
  const gamepage({Key? key}) : super(key: key);

  @override
  State<gamepage> createState() => _gamepageState();
}

class _gamepageState extends State<gamepage> {

  getScore() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();

    List data = prefs.getStringList('score') ?? [];

    String saveData = data[0];

    setState((){
      Game.allScore = jsonDecode(saveData);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getScore();
  }


  @override
  Widget build(BuildContext context) {

    var res = ModalRoute.of(context)!.settings.arguments;

    dynamic fromRes = res;
    List data = fromRes[0];
    String title = fromRes[1];

    List resDrag = data[0]['drag'];
    List resTarget = data[1]['target'];

    DateTime dateTime = DateTime.now();


    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.habibi(),
        ),
        backgroundColor: const Color(0xff002b4c),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'scorePage');
            },
            icon: const Icon(Icons.leaderboard_outlined),
          ),
          IconButton(
            onPressed: () {

              saveScore() async{

                SharedPreferences prefs = await SharedPreferences.getInstance();

                String scoreData = jsonEncode(Game.allScore);

                prefs.setStringList('score', [scoreData]);

              }

              setState(() {

                Map scoreData ={
                  'time': '${dateTime.hour}:${dateTime.minute}:${dateTime.second}',
                  'score': Game.currentScore,
                };

                Game.allScore.add(scoreData);



                saveScore();

                Game.currentScore = 0;

                for (int i = 0; i < 5; i++) {
                  resDrag[i]['isDragged'] = false;
                  resTarget[i]['isDragged'] = false;
                  Game.animal[0]['drag'][i]['isDragged'] = false;
                  Game.animal[1]['target'][i]['isDragged'] = false;
                  Game.fruit[0]['drag'][i]['isDragged'] = false;
                  Game.fruit[1]['target'][i]['isDragged'] = false;
                  Game.vegetable[0]['drag'][i]['isDragged'] = false;
                  Game.vegetable[1]['target'][i]['isDragged'] = false;
                  Game.vehicle[0]['drag'][i]['isDragged'] = false;
                  Game.vehicle[1]['target'][i]['isDragged'] = false;
                  Game.bird[0]['drag'][i]['isDragged'] = false;
                  Game.bird[1]['target'][i]['isDragged'] = false;
                }
              });
            },
            icon: const Icon(Icons.restart_alt),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdnb.artstation.com/p/assets/images/images/033/399/759/large/lucian-ghimpu-asset.jpg?1609451442s'),
                fit: BoxFit.cover,
                opacity: 0.5),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 580,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: resDrag
                        .map(
                          (e) => Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white24),
                            alignment: Alignment.center,
                            child: Draggable(
                              data: e['data'],
                              feedback: Text(
                                '${e['child']}',
                                style: const TextStyle(
                                    fontSize: 70,
                                    decoration: TextDecoration.none),
                              ),
                              childWhenDragging: const Text(''),
                              child: (e['isDragged'])
                                  ? const Text('')
                                  : Text(
                                      '${e['child']}',
                                      style: const TextStyle(fontSize: 70),
                                    ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: resTarget.map((e) {
                      return DragTarget(
                        builder: (context, accepted, rejected) {
                          return Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.tealAccent, width: 2),
                                color: (e['isDragged'])
                                    ? Colors.green
                                    : Colors.white24),
                            alignment: Alignment.center,
                            child: (e['isDragged'])
                                ? Text(
                                    '${e['child']}',
                                    style: TextStyle(fontSize: 70),
                                  )
                                : Text('${e['title']}',style: GoogleFonts.hahmlet(textStyle: const TextStyle(fontSize: 20,color: Colors.white)),),
                          );
                        },
                        onWillAccept: (data) {
                          if(data == e['data']){
                            return true;
                          }else{
                            setState(() {
                              if(Game.currentScore>0){
                                Game.currentScore = Game.currentScore-5;
                              }
                            });
                            return false;
                          }
                        },
                        onAccept: (data) {
                          setState(() {
                            e['isDragged'] = true;
                            for (int i = 0; i < 5; i++) {
                              if (resDrag[i]['data'] == e['data']) {
                                resDrag[i]['isDragged'] = true;
                                break;
                              }
                            }
                            Game.currentScore = Game.currentScore + 10;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              child: Container(
                height: 50,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Text(
                  "Your Score : ${Game.currentScore}",
                  style: GoogleFonts.balooBhai2(
                    textStyle: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

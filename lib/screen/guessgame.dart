import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzel_game/modal.dart';

class guesswhopage extends StatefulWidget {
  const guesswhopage({Key? key}) : super(key: key);

  @override
  State<guesswhopage> createState() => _guesswhopageState();
}

class _guesswhopageState extends State<guesswhopage> {

  int initialPageValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff002b4c),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Container(
            height: 50,
            width: 60,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color(0xfffffff7)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            alignment: Alignment.center,
            child: Text(
              '${Game.guess[initialPageValue][0]['q']}',
              style: GoogleFonts.balooBhai2(fontSize: 22, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (150 / 170),
              ),
              itemBuilder: (context, index) => Draggable(
                data: Game.guess[initialPageValue][1]['drag'][index]['data'],
                feedback: Container(
                  height: 200,
                  width: 150,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffc6d1d9),
                      border: Border.all(
                          color: const Color(0xfffffff7), width: 1.5)),
                  alignment: Alignment.center,
                  child: Text(
                    '${Game.guess[initialPageValue][1]['drag'][index]['child']}',
                    style: const TextStyle(
                        fontSize: 80, decoration: TextDecoration.none),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffc6d1d9),
                      border: Border.all(
                          color: const Color(0xfffffff7), width: 1.5)),
                  alignment: Alignment.center,
                  child: Text(
                    '${Game.guess[initialPageValue][1]['drag'][index]['child']}',
                    style: const TextStyle(fontSize: 80),
                  ),
                ),
                onDragStarted: () {
                  showBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )),
                    builder: (context) {
                      return Container(
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff517899),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DragTarget(
                              builder: (BuildContext context,
                                  List<Object?> candidateData,
                                  List<dynamic> rejectedData) {
                                return Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                      color: (Game.guess[initialPageValue][2]['isDragged'])
                                          ? Color(0xffc6d1d9)
                                          : Colors.white),
                                  alignment: Alignment.center,
                                  child: (Game.guess[initialPageValue][2]['isDragged'])
                                      ? Text(
                                          '${Game.guess[initialPageValue][2]['child']}',
                                          style: const TextStyle(fontSize: 80),
                                        )
                                      : Container(),
                                );
                              },
                              onWillAccept: (data) {
                                return data == Game.guess[initialPageValue][2]['data'];
                              },
                              onAccept: (data) {
                                setState(() {
                                  Game.guess[initialPageValue][2]['isDragged'] = true;
                                  Game.currentScore = Game.currentScore + 10;
                                });
                              },
                            ),
                            const SizedBox(height: 25),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(initialPageValue<4){
                                    Navigator.pop(context);
                                    initialPageValue = initialPageValue+1;
                                  }else{
                                    Navigator.pushNamedAndRemoveUntil(context, 'levelPage', (route) => false);
                                  }
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    color: Colors.black45),
                                alignment: Alignment.center,
                                child: Text(
                      (initialPageValue==4)?"Levels":'Next',
                                  style: GoogleFonts.balooBhai2(
                                      textStyle: const TextStyle(
                                          fontSize: 22, color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                onDraggableCanceled: (_, __) {
                  Navigator.pop(context);
                },
              ),
              itemCount: Game.guess[initialPageValue][1]['drag'].length,
            ),
          )
        ],
      ),
    );
  }
}

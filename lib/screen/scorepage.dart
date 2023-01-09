import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modal.dart';

class scorePage extends StatefulWidget {
  const scorePage({Key? key}) : super(key: key);

  @override
  State<scorePage> createState() => _scorePageState();
}

class _scorePageState extends State<scorePage> {
  List scoreData = [];
  int highestScore = 0;

  getScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List data = prefs.getStringList('score') ?? [];

    String saveData = data[0];

    setState(() {

      scoreData = jsonDecode(saveData);

      print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      print(scoreData);
      print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');

      scoreData.sort((a, b) => b['score'].compareTo(a['score']),);
    });
  }

  @override
  void initState() {
    super.initState();
    getScore();

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Score',
          style: GoogleFonts.habibi(fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff002b4c),
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://thumbs.dreamstime.com/b/galaxy-cartoon-planets-space-background-vector-galaxy-cartoon-planets-space-background-149804117.jpg'),
                fit: BoxFit.cover,
                opacity: 0.9)),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 300,
                width: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('HIGH SCORE', style: GoogleFonts.galindo(fontSize: 22),),
                        const SizedBox(height: 10),
                        Text('${scoreData[0]['score']}',style: GoogleFonts.langar(fontSize: 20),)
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage('https://img.freepik.com/premium-vector/winner-background-first-place-competition_260559-78.jpg?w=2000'),
                          fit: BoxFit.contain
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: scoreData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 50,
                    alignment: Alignment.center,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.black45),
                    child: Text(
                      '${scoreData[index]['score']}                        ${scoreData[index]['time']}',
                      style:
                          GoogleFonts.langar(fontSize: 20, color: Colors.white),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzel_game/modal.dart';

class levelpage extends StatefulWidget {
  const levelpage({Key? key}) : super(key: key);

  @override
  State<levelpage> createState() => _levelpageState();
}

class _levelpageState extends State<levelpage> {

  List levels = [
    {
      'title': 'animal',
      'data': '',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Levels',style: GoogleFonts.habibi(),),
        backgroundColor: Color(0xff002b4c),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/free-vector/space-illustration-night-alien-fantasy-landscape_33099-1873.jpg?w=2000'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 100),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'gamePage',arguments: [Game.animal,"Animal"] );
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Animal',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'gamePage',arguments: [Game.fruit,"Fruit"]);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Fruit',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'gamePage',arguments: [Game.vegetable,"Vegetable"]);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Vegetable',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'gamePage',arguments: [Game.vehicle,"Vehicle"]);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Vehicle',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'gamePage',arguments: [Game.bird,'Bird']);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Birds',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'guessWhoPage');
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45,
                ),
                alignment: Alignment.center,
                child: Text('Guess Who is ?',style: GoogleFonts.laila(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://cdn.wallpapersafari.com/59/2/OoYAeG.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Puzzel Game",style: GoogleFonts.habibi(textStyle: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'levelPage');
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white,width: 2),
                  color: Colors.black45
                ),
                alignment: Alignment.center,
                child: Text("Start", style: GoogleFonts.balooBhai2(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'scorePage');
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white,width: 2),
                  color: Colors.black45
                ),
                alignment: Alignment.center,
                child: Text("High Score", style: GoogleFonts.balooBhai2(textStyle: TextStyle(fontSize: 22,color: Colors.white)),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

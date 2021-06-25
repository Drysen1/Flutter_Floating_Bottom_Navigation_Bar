import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Home",
          style: GoogleFonts.yesevaOne(
            color: Color.fromARGB(255, 195, 165, 89),
            fontSize: 42
          ) 
        ),
      )
    );
  }
}
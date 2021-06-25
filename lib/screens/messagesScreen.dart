import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({ Key? key }) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Messages",
          style: GoogleFonts.yesevaOne(
            color: Color.fromARGB(255, 195, 165, 89),
            fontSize: 42
          ) 
        )
      )
    );
  }
}
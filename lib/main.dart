import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'newsfeed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      
      theme: ThemeData(
        
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme),
        
        
      ),
      
    
      debugShowCheckedModeBanner: false,
      
      home: newsfeed(),
    );
  }
}

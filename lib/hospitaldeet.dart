import 'package:flutter/material.dart';
import 'customclip.dart';


class HosDeet extends StatefulWidget {
  const HosDeet({super.key});

  @override
  State<HosDeet> createState() => _HosDeetState();
}

class _HosDeetState extends State<HosDeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            ClipPath(
              clipper: DefaultClipEnd(), // Use the custom clipper
              child: Container(
                height: 600, // Make the curved section fill the screen height
                //color: const Color.fromARGB(255, 129, 80, 160), // Color of the curved section
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color.fromARGB(255, 129, 80, 160), Colors.white], // Define the colors for the gradient
                    ),
                  ),
              ),
            ),
            ClipPath(
              clipper: DefaultClipPath(), // Use the custom clipper
              child: Container(
                height: 400, // Make the curved section fill the screen height
                color: (Colors.white), // Color of the curved section
                
              ),
            ),
            Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //BODY HERE
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
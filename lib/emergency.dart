import 'package:flutter/material.dart';
import 'customclip.dart';
import 'resourses.dart';

class Emergen extends StatefulWidget {
  const Emergen({super.key});

  @override
  State<Emergen> createState() => _EmergenState();
}

class _EmergenState extends State<Emergen> {
final sear = TextEditingController();

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
            
            Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50,),
                topstuff(sear),
                const Text('GUIDELINES',
                            style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        //fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        //height: 0.03,
                                      ),),
                    const SizedBox(height: 20,),
                    Container(
                      height: 450,width: 350,
                      decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9).withOpacity(0.45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                        child:const Padding(              
                          padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Press Only If it\'s an Emergency',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  Text('You Will be Assigned to the \n\t        Nearest Hospital',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  Text('Helpline No.: 1800180047',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  Text('User ID: User1234',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                                ),
                                )
                              ],
                                                      ),
                            ),
                        ),
                ),
                const SizedBox(height: 50,),
                SizedBox(height: 80, width: 370,
                  child: ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 207, 0, 0)),
                  ),
                    onPressed: () {
                    
                  }, child: const Text('EMERGENCY',
                              style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          //fontFamily: 'Inter',
                                          fontWeight: FontWeight.w800,
                                          //height: 0.03,
                                        ),),),
                )
              ],
            ),
          ),
        ),
      ]),
      ),
      drawer: sidebar(context),
    );
  }
}
// import 'package:curecoders/logins/docsign.dart';
import 'package:flutter/material.dart';
import 'customclip.dart';
import 'logins/signup.dart';
import 'logins/docsign.dart';
import 'logins/receplog.dart';



class UserOps extends StatefulWidget {
  const UserOps({super.key});

  @override
  State<UserOps> createState() => _UserOpsState();
}

class _UserOpsState extends State<UserOps> {

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 129, 80, 160),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            ClipPath(
              clipper: OpsClipPath(), // Use the custom clipper
              child: Container(
                height: 300, // Make the curved section fill the screen height
                color: const Color.fromARGB(255, 129, 80, 160), // Color of the curved section
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50), // Adjust the padding as needed
              child:  Center(
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget> [
                      const SizedBox(height: 50),
                      
                      const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'User Options',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  //fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                  //height: 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50,),
                          SizedBox(
                            height: 180,width: 200,
                            child: InkWell(
                              // customBorder: RoundedRectangleBorder(
                              //     side: BorderSide(
                              //       width: 20,
                              //       strokeAlign: BorderSide.strokeAlignOutside,
                              //       color: Colors.black
                              //     ),
                              //     borderRadius: BorderRadius.circular(50),
                              //   ),
                              borderRadius: const BorderRadius.all(Radius.circular(25)),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                      builder: (context) => const Signup()),
                                    );
                                },
                                child: Image.asset('assets/patient.png'),
                                 
                              ),
                          ),
                            SizedBox(
                              height: 40, width: 200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 129, 80, 160),),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                      builder: (context) => const Signup()),
                                    );
                              }, child: const Text('Patient',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),),
                            ),

                            SizedBox(
                            height: 180,width: 200,
                            child: InkWell(
                             
                              borderRadius: const BorderRadius.all(Radius.circular(25)),
                                onTap: () {
                                  Navigator.push(context,
                                        MaterialPageRoute(
                                        builder: (context) => const DocSignup()),
                                      );
                                },
                                child: Image.asset('assets/doc.png'),
                                 
                              ),
                          ),
                            SizedBox(
                              height: 40, width: 200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 129, 80, 160),),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                        MaterialPageRoute(
                                        builder: (context) => const DocSignup()),
                                      );
                              }, child: const Text('Doctor',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),),
                            ),
                            SizedBox(
                            height: 180,width: 200,
                            child: InkWell(
                              // customBorder: RoundedRectangleBorder(
                              //     side: BorderSide(
                              //       width: 20,
                              //       strokeAlign: BorderSide.strokeAlignOutside,
                              //       color: Colors.black
                              //     ),
                              //     borderRadius: BorderRadius.circular(50),
                              //   ),
                              borderRadius: const BorderRadius.all(Radius.circular(25)),
                                onTap: () {
                                  Navigator.push(context,
                                        MaterialPageRoute(
                                        builder: (context) => const RecepLogin()),
                                      );
                                },
                                child: Image.asset('assets/manag.png'),
                                 
                              ),
                          ),
                            SizedBox(
                              height: 40, width: 200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 129, 80, 160),),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                        MaterialPageRoute(
                                        builder: (context) => const RecepLogin()),
                                      );
                              }, child: const Text('Management',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),),
                            )
                    
                    ],
                  ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}


 
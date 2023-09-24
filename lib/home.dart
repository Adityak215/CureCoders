import 'package:flutter/material.dart';
import 'customclip.dart';
import 'resourses.dart';

class Patient extends StatefulWidget {
  const Patient({super.key, });

  // final String title;

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  final sear = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

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
                color: const Color.fromARGB(255, 129, 80, 160), // Color of the curved section
                
              ),
            ),
            ClipPath(
              clipper: DefaultClipPath(), // Use the custom clipper
              child: Container(
                height: 350, // Make the curved section fill the screen height
                color: (Colors.white), // Color of the curved section
                
              ),
            ),
            Padding(
          padding: const EdgeInsets.all(25.0),
      
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 45,),

              topstuff(sear),
              
              const SizedBox(height: 25,),
              const Text.rich(
              TextSpan(
                children: [
                  
                  TextSpan(
                    text: 'Hello, {Name}!\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      //fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      //height: 0.03,
                    ),
                  ),
                  TextSpan(
                    text: 'You\'re in {Location}\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      //fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      //height: 0.04,
                    ),
                  ),
                ],
              ),
            ),
           Container(
            height: 250,
            decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9).withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
              child:  Padding(              
                padding: const EdgeInsets.all(16),
                  child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/appo.png')),
                                  const Text('Appointments',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/hel.png')),
                                  const Text('Helpline',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/emer.png')),
                                  const Text('Emergency',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/ref.png')),
                                  const Text('Referrals',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/lab.png')),
                                  const Text('Lab Tests',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset('assets/noos.png')),
                                  const Text('Local Med News',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                        ],
                      ),
                  //height: 200,
                  
                ),
            ),
            const SizedBox(height: 20,),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Specialties',
                style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget> [
                      
                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.heart_broken),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Cardio')
                           ],
                        )),
                      ),
                      const SizedBox(width: 10,),
                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.bloodtype),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Hematology')
                           ],
                        )),
                      ),
                      const SizedBox(width: 10,),

                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.accessibility_new),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Check-Up')
                           ],
                        )),
                      ),
                      const SizedBox(width: 10,),

                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.add_business),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Prescription')
                           ],
                        )),
                      ),
                      const SizedBox(width: 10,),

                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.assist_walker_outlined),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Senior\nCitizen')
                           ],
                        )),
                      ),
                      const SizedBox(width: 10,),

                      Container(height: 90,width: 90,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30.0), // Set the border radius
                          ),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(Icons.auto_fix_off_outlined),
                             //Image.asset('assets/pedia.png', height:125 ,width: 125,),
                             Text('Rehab')
                           ],
                        )),
                      ),

                    ],
                             
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Hospitals Near You',
                          style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                      SizedBox(
                        // height: 50, width: 50,
                        child: ElevatedButton(onPressed: () {
                          //filter
                        },
                        child: const Icon(Icons.filter_alt_outlined))),
                  ],
                ),
                const SizedBox(height: 15,),
                  Hosdetail1(context),
                  const SizedBox(height: 10,),
                  Hosdetail2(),
                  const SizedBox(height: 10,),
                  Hosdetail3(),
                  const SizedBox(height: 10,),
                  Hosdetail4(),


              ],
            ),
            ],
          ),
        ),
      ]),
      ),
      drawer: sidebar(context)
    );
  }
}


// void _alertdialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(  
//                 backgroundColor: Colors.white,
//                 title: const Text('Check Capslock, Spelling and Whitespace'),
//                 content: const Text('Wrong Subreddit will not load anything'),
//                 actions: <Widget>[
//                   TextButton(
//                     onPressed: (){
//                        Navigator.of(context).pop();
//                     }
//                   , child: const Text('OK'))
//                 ],
//            );
//     },
//   );
// }



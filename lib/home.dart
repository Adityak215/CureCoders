import 'package:flutter/material.dart';

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
      
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  InkWell(
                    onTap: () {
                      //_alertdialog(context);
                    },
                    splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/71x71"),
                              fit: BoxFit.contain,
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                    
                  ),
                    // Text('data'),
                    // Builder(
                    //   builder: (BuildContext context) {
                    //     return IconButton(
                    //         icon: const Icon(Icons.menu),
                    //         onPressed: () {
                    //           // Open the end drawer when the button is pressed
                    //           Scaffold.of(context).openEndDrawer();
                    //         },
                    //       );
                    //   }
                    // ),
                  ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
      
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 25,),
              // Row(
                
              //   ),
              const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello,\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      //fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      //height: 0.04,
                    ),
                  ),
                  
                  TextSpan(
                    text: 'CureCoders 🩺',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      //fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      //height: 0.03,
                    ),
                  ),
                ],
              ),
            ),
           Container(
            decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
              child:  Padding(              
                padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Hello,\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      //height: 0.04,
                                    ),
                                  ),
                                  
                                  TextSpan(
                                    text: 'CureCoders 🩺',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 138,
                              width: 163,
                              child: Image.asset('assets/image_2023-09-23_14-07-17.png')),
                        ],
                      ),
      
                      SizedBox(
                        height: 40,
                        child:  TextFormField(
                            controller: sear,
                            decoration:  const InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Enter Your Username',
                              labelText: "Username",
                            ),
                          ),
                       
                      ),
                    ],
                  ),
                  //height: 200,
                  
                ),
            ),
      
            Column(
              children: [
                const Text('What do you need help with Today?',
                style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget> [
                      Ink(
                        decoration: const ShapeDecoration(
                            color: Colors.transparent,
                            shape: CircleBorder(),
                          ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/fulbod.png', height:125 ,width: 125,),
                              const Text('Full Body\nCheck-up',),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                         children: [
                           Image.asset('assets/pedia.png', height:125 ,width: 125,),
                           const Text('Pediatrician')
                         ],
                      )),
                      InkWell(
                        onTap: () {
                          
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                         children: [
                           Image.asset('assets/blood.png', height:125 ,width: 125,),
                           const Text('Blood Test')
                         ],
                      )),
                    ],
                             
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.inversePrimary,),
              child: const Text('Drawer for Stuff')),
          ],
        ),
      ),
    );
  }
}


void _alertdialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(  
                backgroundColor: Colors.white,
                title: const Text('Check Capslock, Spelling and Whitespace'),
                content: const Text('Wrong Subreddit will not load anything'),
                actions: <Widget>[
                  TextButton(
                    onPressed: (){
                       Navigator.of(context).pop();
                    }
                  , child: const Text('OK'))
                ],
           );
    },
  );
}



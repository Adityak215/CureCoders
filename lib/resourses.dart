// ignore_for_file: non_constant_identifier_names

import 'package:curecoders/logins/signup.dart';
import 'package:curecoders/userops.dart';
import 'package:flutter/material.dart';
import 'hospitaldeet.dart';

Container Hosdetail1(context){
  return Container(
                  height: 90,
                  decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                    child:InkWell(
                      onTap: () {
                        Navigator.push(context,
                                      MaterialPageRoute(
                                      builder: (context) => const HosDeet()),
                                    );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 70,width: 70,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0), // Set the border radius
                          ),),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('Jagdamba Hospital',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                              Text('Wakhnaghat, HP',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          ),
                          )
                            ],
                          ),
                          const Text('1.1 Km Away',
                          style: TextStyle(
                            fontWeight: FontWeight.w200
                          ),
                          )
                        ],
                      ),
                    )
                    );
}

Container Hosdetail2(){
  return Container(
                  height: 90,
                  decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                    child:InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 70,width: 70,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0), // Set the border radius
                          ),),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('Maxwell Hospital',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                              Text('Kandaghat, HP',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          ),
                          )
                            ],
                          ),
                          const Text('2.0 Km Away',
                          style: TextStyle(
                            fontWeight: FontWeight.w200
                          ),
                          )
                        ],
                      ),
                    )
                    );
}

Container Hosdetail3(){
  return Container(
                  height: 90,
                  decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                    child:InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 70,width: 70,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0), // Set the border radius
                          ),),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('AIIMS Hospital',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                              Text('Shimla, HP',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          ),
                          )
                            ],
                          ),
                          const Text('10.0 Km Away',
                          style: TextStyle(
                            fontWeight: FontWeight.w200
                          ),
                          )
                        ],
                      ),
                    )
                    );
}

Container Hosdetail4(){
  return Container(
                  height: 90,
                  decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                    child:InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 70,width: 70,
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(255, 129, 80, 160).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0), // Set the border radius
                          ),),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('Bhawani Hospital',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      //fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      //height: 0.03,
                                    ),),
                              Text('Mandi, HP',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          ),
                          )
                            ],
                          ),
                          const Text('15.0 Km Away',
                          style: TextStyle(
                            fontWeight: FontWeight.w200
                          ),
                          )
                        ],
                      ),
                    )
                    );
}


Row topstuff(sear)
{
  return Row(
                children: [
                  Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                            icon: Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gojo.png'),
                              fit: BoxFit.contain,
                              opacity: 0.5
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 0,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                            onPressed: () {
                              // Open the end drawer when the button is pressed
                              Scaffold.of(context).openDrawer();
                            },
                          );
                      }
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                        height: 65, width: 270,
                        //child: SearchBar(),
                        child: TextFormField(
                        
                              controller: sear,
                              decoration:  InputDecoration(
                                fillColor: Colors.grey.withOpacity(0.3),
                                filled: true,
                                
                                border: const UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Enter Your Requirement',
                                labelText: "Doctors, Speciality, Hospitals...",
                              ),
                            ),
                        
                      ),
                ],
                );
}


Drawer sidebar(context)
{
  return Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.inversePrimary,),
              child: Row(
                children: [
                  IconButton(
                            icon: Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gojo.png'),
                              fit: BoxFit.contain,
                              opacity: 0.5
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 0,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                            onPressed: () {
                              // Open the end drawer when the button is pressed
                              Navigator.pop(context);
                            },
                          ),
                          const SizedBox(width: 20,),
                          const Text('{Name}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          ),
                ],
              )),
              ListTile(
            title: const Text('Profile Overview',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),),
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const PersonalInfo()),
              // );
            },
          ),
          ListTile(
            title: const Text('My Appointments',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),),
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const PersonalInfo()),
              // );
            },
          ),
          ListTile(
            title: const Text('History',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),),
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const PersonalInfo()),
              // );
            },
          ),
          ListTile(
            title: const Text('Switch User',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserOps()),
              );
            },
          ),
          ListTile(
            title: const Text('Log Out',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              );
            },
          ),
          ],
        ),
      );
}

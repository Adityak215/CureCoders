import 'package:curecoders/userops.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Welcome to',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    //fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                    //height: 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                    SizedBox.fromSize(child: Image.asset('assets/welcome.png')),
        
                    const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'MEDIQN',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    //fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                    //height: 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                        SizedBox(
                                height: 60, width: 300,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 129, 80, 160),),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                        builder: (context) => const UserOps()),
                                      );
                                }, child: const Text('Get Started',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      ),),
                              ),
        
            ],
          ),
        ),
    );
  }
}
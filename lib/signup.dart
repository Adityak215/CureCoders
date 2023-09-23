import 'package:flutter/material.dart';
import 'customclip.dart';
import 'package:provider/provider.dart';
import 'provida.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final usern = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 80, 160),
      // appBar: AppBar(
      //   title: Text('Split Scaffold'),
      //   elevation: 0, // Remove the elevation/shadow of the app bar
      // ),
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(), // Use the custom clipper
            child: Container(
              height: double.infinity, // Make the curved section fill the screen height
              color: Colors.white, // Color of the curved section
              
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50), // Adjust the padding as needed
            child:  Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  const SizedBox(height: 75),
                  const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'A platform \nfor you, by\nyou.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              //fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              //height: 0.03,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100,),
                    Text.rich(TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              //fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              //height: 0.03,
                            ),
                          ),),
                    const SizedBox(height:30),
                    Text('   Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 20
                    ),
                    ),
                    const SizedBox(height:10),
                     TextFormField(
                            controller: usern,
                            decoration:  const InputDecoration(
                              fillColor: Color.fromARGB(255, 188, 188, 188),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                              prefixIcon: Icon(Icons.email_outlined),
                              hintText: 'Enter Your Email',
                              labelText: "curecoders@gmail.com",
                            ),
                          ),
                      
                      const SizedBox(height:10),
                      const Text('   Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 20
                          ),
                        ),
                    const SizedBox(height:10),
                      Consumer<Boolprovider>(builder: (context, value,child){
                        return TextFormField(
                            controller: pass,
                            obscureText: value.passwordVisible,
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 188, 188, 188),
                              filled: true,
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                              prefixIcon: const Icon(Icons.lock_outline),
                              hintText: "Password",
                              labelText: "*********",
                              helperText: "Password must contain special character",
                              helperStyle:
                                  TextStyle(color: Theme.of(context).colorScheme.primary,),
                              suffixIcon: IconButton(
                                icon: Icon(value.passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                    value.setpass();
                                  },
                                  ),
                                alignLabelWithHint: false,
                                
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            );
                      },),

                      SizedBox(height: 10,),
                      Center(
                        child: Row(
                          children: [
                            Image.asset('assets/goog.png'),
                            Image.asset('assets/fb.png'),
                            Image.asset('assets/x.png'),
                            
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),

                ],
              ),
            
          ),
        ],
      ),
    );
  }
}


 
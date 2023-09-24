import 'package:flutter/material.dart';
import '../customclip.dart';
import 'package:provider/provider.dart';
import '../provida.dart';
import 'login.dart';
import 'package:curecoders/main.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final usern = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 129, 80, 160),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            ClipPath(
              clipper: SignupClipPath(), // Use the custom clipper
              child: Container(
                height: screenHeight, // Make the curved section fill the screen height
                color: Colors.white, // Color of the curved section
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50), // Adjust the padding as needed
              child:  Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[ 
                        IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.keyboard_double_arrow_left_outlined)),
                      
                      ]
                    ),
                    const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'A platform \nfor you, by\nyou.',
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
                      const SizedBox(height: 100,),
                      const Text.rich(TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                //fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                                //height: 0.03,
                              ),
                            ),),
                      const SizedBox(height:30),
                      const Text('   Email',
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
                                hintText: 'curecoders@gmail.com',
                                //labelText: "curecoders@gmail.com",
                                
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!value.contains('@')) {
                                  return 'Invalid email format';
                                }
                                return null; // Return null if the input is valid
                              },
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
                                fillColor: const Color.fromARGB(255, 188, 188, 188),
                                filled: true,
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                prefixIcon: const Icon(Icons.lock_outline),
                                hintText: "*********",
                                //labelText: "*********",
                                //helperText: "Password must contain special character",
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
                                validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value.length < 8) {
                                      return 'Password must be at least 8 characters';
                                    }
                                    return null; // Return null if the input is valid
                                  },
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                              );
                        },),
      
                        const SizedBox(height: 25,),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 25, width: 25,
                                child: Image.asset('assets/goog.png')),
                                const SizedBox(width: 40,),
                              SizedBox(
                                height: 25, width: 25,
                                child: Image.asset('assets/fb.png')),
                                const SizedBox(width: 40,),
                              SizedBox(
                                height: 25, width: 25,
                                child: Image.asset('assets/x.png')),
                              
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        Center(
                          child: SizedBox(
                            height: 50, width: 200,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context) => const MyHomePage()),
                                );
                              }, 
                            icon: const Icon(Icons.arrow_forward,
                              color: Colors.black), 
      
                            label: const Text('Next',
                              style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                            ),
                            )),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('Already have an Account?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13
                                ),
                              ),
                              TextButton(onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context) => const PatLogin()),
                                );
                              }, child: const Text('Log In',
                                style: TextStyle(
                                color: Colors.blue,
                                fontSize: 13
                                ),
                              ))
                              
                            ],
                          ),
                        ),
      
      
                  ],
                ),
              
            ),
          ],
        ),
      ),
    );
  }
}


 
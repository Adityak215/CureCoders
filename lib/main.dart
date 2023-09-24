import 'package:curecoders/emergency.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'provida.dart';
import 'userops.dart';
import 'logins/docsign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> Indexprovider()),
        ChangeNotifierProvider(create: (_)=> Boolprovider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          //scaffoldBackgroundColor: Colors.purple,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const  MyHomePage(), //UserOps(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  static const List<Widget> _widgetOptions = <Widget>[
    Patient(),
    DocSignup(),
    UserOps(),
    Emergen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Indexprovider>(builder: (context, value, child) {
        return Scaffold(
          body: Center(
              child: _widgetOptions.elementAt(value.selectedindex),
            ),
          
          bottomNavigationBar: BottomNavigationBar(
             
              currentIndex: value.selectedindex,
              type: BottomNavigationBarType.shifting,
              items:  [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home, color:  const Color.fromARGB(255, 129, 80, 160).withOpacity(0.7),),
                  icon: const Icon(Icons.home_outlined,color: Colors.grey,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person_add_alt_1_sharp, color:  const Color.fromARGB(255, 129, 80, 160).withOpacity(0.7),),
                  icon: const Icon(Icons.person_add_alt,color: Colors.grey,),
                  label: 'Nearby',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.schedule_outlined, color:  const Color.fromARGB(255, 129, 80, 160).withOpacity(0.7),),
                  icon: const Icon(Icons.schedule_sharp,color: Colors.grey,),
                  label: 'Scheduled',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.emergency, color:  const Color.fromARGB(255, 129, 80, 160).withOpacity(0.7),),
                  icon: const Icon(Icons.emergency_outlined,color: Colors.grey,),
                  label: 'Emergency',
                ),
              ],
              selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
              onTap: (index) {
                value.setindex(index);
              },
            ),
        );
      }
    );
  }
}

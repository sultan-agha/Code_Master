import 'package:code_master/home-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:async';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  @override
  _LoginPageState createState() => _LoginPageState();
  Color _buttonColor = Colors.white;// Initial button color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Welcome ",style: TextStyle(
              fontSize: 55,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            const Text("To CodeMaster yayy! ",style: TextStyle(
              fontSize: 35,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20.0,),
            Image.asset('images/login.png'),
            const SizedBox(height: 40.0,),

            Animate(

              effects: [FadeEffect(), ScaleEffect()],
              child: ElevatedButton(onPressed: (){
                _changeButtonColor(context);
              },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.pinkAccent,
                    backgroundColor: _buttonColor,
                    minimumSize:const Size(300,40),
                  ),

                  child: const Text("Lets Get Starteddd!!!",).animate().rotate(duration: 1500.ms)),
            ),
            const SizedBox(height: 40.0,),
          ],
        ),
      ),
    );
  }
  void _changeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _buttonColor = Colors.lightBlue; // You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});

    // Wait for 1 second using a timer
    Timer(const Duration(milliseconds: 200), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) {
            return const Home_Page();
          })
      );
    });
  }

}

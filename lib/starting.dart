import 'package:code_master/home-page.dart';
import 'package:code_master/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
class Start_Page extends StatefulWidget {
  const Start_Page({super.key});

  @override
  State<Start_Page> createState() => _Start_PageState();
}
class _Start_PageState extends State<Start_Page> {
  // for programing on click
  Color _PbuttonColor = Colors.blueGrey;// Initial button color
  //for learning on click
  Color _LbuttonColor = Colors.blueGrey;// Initial button color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar:  AppBar(
        actions: [
          IconButton(onPressed: (){
            setState(() {if(backgroundcolor==Colors.white){
              backgroundcolor=Colors.black;
              foregroundColor=Colors.white;
            }
            else{
              backgroundcolor=Colors.white;
              foregroundColor=Colors.black;
            }
            });
          }, icon: const Icon(
              Icons.color_lens
          ))
        ],
        title: const Text("Starting Blog"),
        backgroundColor: backgroundcolor,
        foregroundColor: foregroundColor ,
      ),
      drawer:  SafeArea(
        // i can use drawer header istead of container
        child:  Drawer(child: Column(
          children:  [
            Container(
              height: 150, // Set the desired height of the header
              color: Colors.lightBlueAccent, // Customize the background color
              alignment: Alignment.center,
              child: const Text(
                'Menu',
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),

            ListTile(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) {
                  return const MyApp();
                }));
              },
              leading: const Icon(Icons.logout),
              title: const Text("Okay enough learning for today ",style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              ),
            )
          ],
        ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Wrap(
                    spacing: 20,
                    children: [
                      // for the programing categorie
                      Center(
                        child: Animate(
                          effects: [FadeEffect(), ScaleEffect()],
                          child: ElevatedButton(onPressed: (){_changeButtonColor(context);
                          },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: _PbuttonColor,
                                shape: const StadiumBorder(),
                              ),
                              child: const Text("Programing languages").animate().scale(duration: 1500.ms)),
                        ),
                      ),
//for strt learning categorie
                      Center(
                        child: Animate(
                          effects: [FadeEffect(), ScaleEffect()],
                          child: ElevatedButton(onPressed: null,
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.white),
                                backgroundColor: MaterialStateProperty.all(_LbuttonColor),
                                shape:  MaterialStateProperty.all(const StadiumBorder()),
                              ),
                              child: const Text("How to start learning").animate().fadeOut(duration: 1500.ms)),
                        ),
                      ),

                      const SizedBox(height: 20.0),
                      const Text("1st Step: The most important step is to choose what you want to learn: front-end (making websites), backend, or mobile programming.",
                          textAlign: TextAlign.justify,style: TextStyle(color: Colors.blue,)),
                      const  SizedBox(height: 20.0,),
                          const Text("2nd Step: Now that you have chosen what you want to learn, let's talk a little about each of them.",style: TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                        ),textAlign: TextAlign.justify,),
                      const  SizedBox(height: 20.0,),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text("2-A: Front-end (making websites): Front-end development involves creating the user interface and user experience of a website. This includes designing the layout, selecting colors, fonts, and graphics, and implementing the interactive elements that users interact with. Common front-end technologies include HTML, CSS, and JavaScript. It allows you to build visually appealing and interactive websites that users can access through web browsers.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,),
                          textAlign: TextAlign.justify,),
                      ),
                      const Text(" 2nd Step : After learning html,css,and javascript you can now choose between React or angular framework.",
                        textAlign: TextAlign.justify,style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,),
                      ),
                      const  SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text("2-B: Backend development: Backend development deals with the server-side of web applications. It involves managing databases, handling user authentication, and processing requests from the front-end. Backend developers often work with server-side languages like Python, Java, PHP, or Node.js, and they interact with databases such as MySQL. Learning backend development enables you to build the logic and functionality that power web applications.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,),
                          textAlign: TextAlign.justify,),
                      ),
                      const  SizedBox(height: 20.0,),
                      const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text("2-C: Mobile programming: Mobile programming involves developing applications for mobile devices like smartphones and tablets. This can be divided into two main platforms: Android and iOS.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,),
                          textAlign: TextAlign.justify,),
                      ),
                      const  SizedBox(height: 20.0,),
                    const  Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text(" If you want to develop an IOS applications it requires knowledge of Swift or Objective-C.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.purple,),
                          textAlign: TextAlign.justify,),
                      ),
                      const  SizedBox(height: 20.0,),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text(" While if you want to develop an ANDROID applications you'll typically use Java or Kotlin,",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.purple,),
                          textAlign: TextAlign.justify,),
                      ),
                      const  SizedBox(height: 20.0,),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text(" While if you want to develop an ANDROID and IOS  applications together  go and Learn Flutter.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.purple,),
                          textAlign: TextAlign.justify,),
                      ),
                      const  SizedBox(height: 20.0,),
                     const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text("Learning mobile programming allows you to create mobile apps that can be downloaded and used on various devices.",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,),
                          textAlign: TextAlign.justify,),
                      ),
                    ],
                  ),
                ),
              ]
          )
      ),
    );
  }
  // for changing the elevated buttons of Home page
  void _changeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _PbuttonColor=Colors.purple;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});

    // Wait for 1 second using a timer
    Timer(const Duration(milliseconds: 200), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) {
        return const Home_Page();
      })
      );
    });
  }


// for changing the elevated buttons of start learning page

}
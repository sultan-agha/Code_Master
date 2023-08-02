import 'package:code_master/discription.dart';
import 'package:code_master/main.dart';
import 'package:code_master/starting.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}


Color backgroundcolor=Colors.white;
Color foregroundColor=Colors.black;

class _Home_PageState extends State<Home_Page> with TickerProviderStateMixin {
  //for color of blogs
  Color _SbuttonColor = Colors.white;
  Color _JbuttonColor = Colors.white;
  Color _FbuttonColor = Colors.white;
  Color _KbuttonColor = Colors.white;
  Color _PYbuttonColor = Colors.white;
  Color _AbuttonColor = Colors.white;
  Color _RbuttonColor = Colors.white;
  Color _HbuttonColor = Colors.white;
  Color _PHbuttonColor = Colors.white;


  // for programing on click
  Color _PbuttonColor = Colors.blueGrey; // Initial button color
  //for learning on click
  Color _LbuttonColor = Colors.blueGrey; // Initial button color
  // be5alene ethakam bel animation emtan ma bade
  // late ma darore a3mela declare de8re
  late AnimationController animationController1, animationController2,
      animationController3, animationController4, animationController5,
      animationController6, animationController7, animationController8,
      animationController9;

  @override
  //init state ya3ne onstart
  void initState() {
    super.initState();
    _SbuttonColor=Colors.white;
    _JbuttonColor=Colors.white;
    _FbuttonColor=Colors.white;
    _KbuttonColor=Colors.white;
    _PYbuttonColor=Colors.white;
    _AbuttonColor=Colors.white;
    _RbuttonColor=Colors.white;
    _HbuttonColor=Colors.white;
    _PHbuttonColor=Colors.white;
    animationController1 = AnimationController(vsync: this);
    animationController2 = AnimationController(vsync: this);
    animationController3 = AnimationController(vsync: this);
    animationController4 = AnimationController(vsync: this);
    animationController5 = AnimationController(vsync: this);
    animationController6 = AnimationController(vsync: this);
    animationController7 = AnimationController(vsync: this);
    animationController8 = AnimationController(vsync: this);
    animationController9 = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              setState(() {
                if (backgroundcolor == Colors.white) {
                  backgroundcolor = Colors.black;
                  foregroundColor = Colors.white;
                }
                else {
                  backgroundcolor = Colors.white;
                  foregroundColor = Colors.black;
                }
              });
            }, icon: const Icon(
                Icons.color_lens
            ))
          ],
          title: const Text("Learning Blog"),
          backgroundColor: backgroundcolor,
          foregroundColor: foregroundColor,
        ),
        drawer: SafeArea(
          // i can use drawer header instead of container
          child: Drawer(child: Column(
            children: [
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
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const MyApp();
                      }));
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  "Okay enough learning for today ", style: TextStyle(
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
                    Animate(
                      effects: [FadeEffect(), ScaleEffect()],
                      child: ElevatedButton(onPressed: null,
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(_PbuttonColor),
                            shape: MaterialStateProperty.all (StadiumBorder()),
                          ),
                          child: const Text("Programing languages")
                              .animate()
                              .fadeOut(duration: 2000.ms)),
                    ),
//for strt learning categorie
                    Animate(
                      effects: [FadeEffect(), ScaleEffect()],
                      child: ElevatedButton(onPressed: () {
                        _LchangeButtonColor(context);
                      },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: _LbuttonColor,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("How to start learning")
                              .animate()
                              .scale(duration: 2000.ms)),
                    ),
                  ],
                ),
              ),
              // finished categories

              // starting with the first  blog(swift)
              GestureDetector(
                onTap: () {
                  animationController1.reset();
                  animationController1.forward();
                  //change the color
                  _SBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'swift',
                              imagePath: 'images/swift.png',
                              websiteUrl: "https://www.swift.org/documentation/",
                              youtubeUrl: "https://www.youtube.com/watch?v=8Xg7E9shq0U",
                              text:
                              'Swift is  a robust and intuitive programming language created by Apple for building apps for iOS, Mac, Apple TV, and Apple Watch.');
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _SbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                // for the 1st map which is swift
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _SbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/swift.png'),
                      const ListTile(
                        title: Text("Learn Swift here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController1).flipH(
                  duration: 1.seconds),
              // starting with the second  blog(java)
              GestureDetector(
                onTap: () {
                  animationController2.reset();
                  animationController2.forward();
                  //change the color
                  _JBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Java',
                              imagePath: 'images/Java.png',
                              websiteUrl: "https://www.tutorialspoint.com/java/index.htm",
                              youtubeUrl: "https://www.youtube.com/watch?v=A74TOX803D0",
                              text: "Java – the basics "
                                  "Java is a multi-platform, object-oriented, and network-centric language that can be used as a platform in itself. It is a fast, secure, reliable programming language for coding everything from mobile apps and enterprise software to big data applications and server-side technologies.");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _JbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _JbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Java.png'),
                      const ListTile(
                        title: Text("Learn Java here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController2).flipH(
                  duration: 1.seconds),
              // starting with the 3rd blog(flutter)
              GestureDetector(
                onTap: () {
                  animationController3.reset();
                  animationController3.forward();
                  //change the color
                  _FBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Flutter',
                              imagePath: 'images/Flutter.png',
                              websiteUrl: "https://docs.flutter.dev/",
                              youtubeUrl: "https://www.youtube.com/watch?v=CD1Y2DmL5JM",
                              text: "What is Flutter? "
                                  "Flutter is Google’s portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code.");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _FbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _FbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Flutter.png'),
                      const ListTile(
                        title: Text("Learn Flutter here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController3).flipH(
                  duration: 1.seconds),
              // starting with the 4th blog(kotlin)
              GestureDetector(
                onTap: () {
                  animationController4.reset();
                  animationController4.forward();
                  //change the color
                  _KBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Kotlin',
                              imagePath: 'images/Kotlin.png',
                              websiteUrl: "https://kotlinlang.org/docs/home.html",
                              youtubeUrl: "https://www.youtube.com/watch?v=F9UC9DY-vIU",
                              text: "Kotlin is a statically typed, object-oriented programming language that is interoperable with the Java virtual machine (JVM), Java Class Libraries and Android."
                                  " The Kotlin programming language was originally designed to improve the Java programming language and is often used in conjunction with Java. Despite being the preferred development language of Android, Kotlin's interoperability with Java has led it to be used with many application types.");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _KbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _KbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Kotlin.png'),
                      const ListTile(
                        title: Text("Learn Kotlin here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController4).flipH(
                  duration: 1.seconds),
              // starting with the fifth blog(Python)
              GestureDetector(
                onTap: () {
                  animationController5.reset();
                  animationController5.forward();
                  //change the color
                  _PBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Python',
                              imagePath: 'images/Python.png',
                              websiteUrl: "https://docs.python.org/3/",
                              youtubeUrl: "https://www.youtube.com/watch?v=rfscVS0vtbw",
                              text: "Python is a computer programming language often used to build websites and software, automate tasks, and conduct data analysis. Python is a general-purpose language, meaning it can be used to create a variety of different programs and isn't specialized for any specific problems.");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _PYbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _PYbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Python.png'),
                      const ListTile(
                        title: Text("Learn Python here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController5).flipH(
                  duration: 1.seconds),
              // starting with the 6th blog(Angular)
              GestureDetector(
                onTap: () {
                  animationController6.reset();
                  animationController6.forward();
                  //change the color
                  _ABlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Angular',
                              imagePath: 'images/Angular.png',
                              websiteUrl: "https://angular.io/docs",
                              youtubeUrl: "https://www.youtube.com/watch?v=k5E2AVpwsko",
                              text: "What is Angular? Angular is a modern MVVC framework and platform that is used to build enterprise Single-page Web Applications (or SPAs) using HTML and TypeScript. Angular is written in TypeScript. It implements core and optional functionality as a set of TypeScript libraries that you import into your apps..");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _AbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _AbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Angular.png'),
                      const ListTile(
                        title: Text("Learn Angular here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController6).flipH(
                  duration: 1.seconds),
              // starting with the 7th blog(React)
              GestureDetector(
                onTap: () {
                  animationController7.reset();
                  animationController7.forward();
                  //change the color
                  _RBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'React',
                              imagePath: 'images/React.png',
                              websiteUrl: "https://react.dev/",
                              youtubeUrl: "https://www.youtube.com/watch?v=4UZrsTqkcW4",
                              text: "What Is React and How Does It Work?"
                                  " Released by Facebook in 2013, React is a JavaScript library for building modern applications. React is used for handling the view layer and can be used for development of both web and mobile applications."
                                  "Why Use React?"
                                  "These are the features that make the React library so good and powerful to build modern applications and what also makes React stand out against other frameworks and libraries");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _RbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _RbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/React.png'),
                      const ListTile(
                        title: Text("Learn React here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController7).flipH(
                  duration: 1.seconds),
              // starting with the 8th blog(html css and java script)
              GestureDetector(
                onTap: () {
                  animationController8.reset();
                  animationController8.forward();
                  //change the color
                  _HBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Html,css,j.s',
                              imagePath: 'images/Html5.png',
                              websiteUrl: "https://www.w3schools.com/html/default.asp",
                              youtubeUrl: "https://www.youtube.com/watch?v=_GTMOmRrqkU",
                              text: "HTML, or Hypertext Markup Language, is a markup language for the web that defines the structure of web pages."
                                  " It is one of the most basic building blocks of every website, so it's crucial to learn if you want to have a career in web development."
                                  "In this article, I will walk you through what HTML is about in detail, how it does things on web pages, and we'll also touch on a really cool part of HTML – Semantic HTML."
                                  "In this case, I like to break down the three technologies – HTML, CSS, and JavaScript – this way: they are like a human body."
                                  "HTML is the skeleton,"
                                  "CSS is the skin,"
                                  "and JavaScript is the circulatory, digestive, and respiratory systems that brings the structure and the skin to life..");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _HbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _HbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Html5.png'),
                      const ListTile(
                        title: Text("Learn Html,css,j.s here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController8).flipH(
                  duration: 1.seconds),
              // starting with the 9th blog(Php)
              GestureDetector(
                onTap: () {
                  animationController9.reset();
                  animationController9.forward();
                  //change the color
                  _PHPBlogchangeButtonColor(context);
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Discrption_Page(title: 'Php',
                              imagePath: 'images/Php.png',
                              websiteUrl: "https://www.php.net/docs.php",
                              youtubeUrl: "https://www.youtube.com/watch?v=OK_JCtrrv-c",
                              text: "PHP is an open-source, server-side programming language that can be used to create websites, applications, customer relationship management systems and more. It is a widely-used general-purpose language that can be embedded into HTML. This functionality with HTML means that the PHP language has remained popular with developers as it helps to simplify HTML code.");
                        })
                    ).then((_) {
                      // Reset the background color when you return to the previous page.
                      setState(() {
                        _PHbuttonColor = Colors.white;
                      });
                      animationController1.reset();
                      animationController1.forward();
                      animationController2.reset();
                      animationController2.forward();
                      animationController3.reset();
                      animationController3.forward();
                      animationController4.reset();
                      animationController4.forward();
                      animationController5.reset();
                      animationController5.forward();
                      animationController6.reset();
                      animationController6.forward();
                      animationController7.reset();
                      animationController7.forward();
                      animationController8.reset();
                      animationController8.forward();
                      animationController9.reset();
                      animationController9.forward();
                    });
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _PHbuttonColor,
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                      ]
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/Php.png'),
                      const ListTile(
                        title: Text("Learn Php here"),
                        trailing: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                ),
              ).animate(controller: animationController9).flipH(
                  duration: 1.seconds),
            ],

          ),
        )
    );
  }

  // for changing the elevated buttons of Home page


  // for changing the elevated buttons of start learning page
  void _LchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _LbuttonColor = Colors.purple; // You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});

    // Wait for 1 second using a timer
    Timer(const Duration(milliseconds: 200), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) {
            return const Start_Page();
          })
      );
    });
  }

  // i can make a class for animation controller

  //  class la halo whot feyo color lal Swift blogs
  void _SBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _SbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
// for java
  void _JBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _JbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for flutter
  void _FBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _FbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for kotlin
  void _KBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _KbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for Python
  void _PBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _PYbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for Angular
  void _ABlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _AbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for React
  void _RBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _RbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for Html
  void _HBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _HbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
  //for PHP
  void _PHPBlogchangeButtonColor(BuildContext context) async {
    // Change the button color when pressed
    setState(() {
      _PHbuttonColor = Colors.lightBlueAccent;// You can change the color as desired
    });
    await Future.delayed(const Duration(milliseconds: 100), () {});
  }
}

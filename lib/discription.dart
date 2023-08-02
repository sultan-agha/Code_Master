import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Discrption_Page extends StatelessWidget {
  const Discrption_Page({super.key,required this.title,required this.imagePath,required this.text,
    required this.youtubeUrl,required this.websiteUrl
  });
  final String title;
  final String imagePath;
  final String text;
  final String youtubeUrl;
  final String websiteUrl;
// for youtube
  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              Text(title,style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20.0),
              Text(text ,style: const TextStyle(
                fontSize: 15.0,
              ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30.0),
              const  Text("u can see the doc right here or u can watch this youtube video",style:  TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
              ),),
              Animate(
                child: ElevatedButton(
                  onPressed: ()async{launchInBrowser(Uri.parse(youtubeUrl));},
                  child: const Text("Click here to watch the video",style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red
                  ),
                  ),

                ).animate().scale(duration :2.seconds),
              ),
              Animate(
                child: ElevatedButton(
                  onPressed: ()async{launchInBrowser(Uri.parse(websiteUrl));},
                  child: const Text('Open Doc Website',style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue
                  ),),
                ).animate().scale(duration :2.seconds),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// async i use it when ineed await for example req for data
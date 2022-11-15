import 'package:flutter/material.dart';

import 'package:movies12/customwidgets/getstarted_customwidget.dart';
import 'package:movies12/customwidgets/languagepage_customwidget.dart';

import 'package:movies12/screens/introduction%20screens/frame1.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          image: DecorationImage(
            image: AssetImage("image/Group 1.png"),fit: BoxFit.fill
          )
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4,),
            Text("Watch Videos in Your Languge",style: Theme.of(context).textTheme.headlineLarge,),
            Spacer(flex: 2,),
            CustomBox3(language: "English"),
            Spacer(),
            CustomBox3(language: "Hindi"),
            Spacer(),
            CustomBox3(language: "Urdu"),
            Spacer(),
            CustomBox3(language: "Gujrati"),
            Spacer(),
            CustomBox3(language: "Malyalam"),
            Spacer(),
            CustomBox3(language: "Marathi"),
            Spacer(flex: 2,),
            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FrameOne();
              },));
            }, data: "Get Started"),
            Spacer(flex: 4,)

          ],
        ),
      ),
    );
  }
}

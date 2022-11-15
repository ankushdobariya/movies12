import 'package:flutter/material.dart';

import 'package:movies12/customwidgets/getstarted_customwidget.dart';

import 'package:movies12/screens/interestpage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          image: DecorationImage(
              image: AssetImage("image/Group 1.png"), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/Mask group.png",
              height:size.height * 0.6,
              width: size.width,
              fit: BoxFit.fill,
            ),
            Text(
              " WELCOME TO MOVIE",
              style: Theme.of(context).textTheme.headlineLarge
            ),
            Spacer(),
            Text("The Best Movie Streaming App of The Century To Make Your Days Great?",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline1,),
            Spacer(flex: 3,),
            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IntersetPage();
              },));
            }, data: "Get Started"),
            Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}

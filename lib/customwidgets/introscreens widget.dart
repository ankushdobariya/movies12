import 'package:flutter/material.dart';
import 'package:movies12/customwidgets/getstarted_customwidget.dart';


class introscreen extends StatelessWidget {
  const introscreen({Key? key, required this.image, required this.introduction, required this.onpressed}) : super(key: key);

  final String image;
  final String introduction;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Theme
                .of(context)
                .backgroundColor,
            image: DecorationImage(
                image: AssetImage("image/Group 1.png"), fit: BoxFit.fill
            )
        ),
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset(image, fit: BoxFit.fill,),
            Spacer(),
            Text(introduction,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,),
            Spacer(),
            Custombtn(onPressed: onpressed, data: "Get Started"),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:movies12/customwidgets/getstarted_customwidget.dart';
import 'package:movies12/screens/welcomepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            image: const DecorationImage(
                image: AssetImage("image/Group 1.png"),fit: BoxFit.fill
            )

        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 5,),
            Image.asset("image/Group 2.png",scale: 7,),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("select your favourite movies and tv show from the list",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,),
            ),
            const Spacer(flex: 2,),
            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const WelcomePage();
              },));
            }, data: "Get Started"),
            const Spacer(),

          ],
        ),

      ),
      // backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies12/customwidgets/getstarted_customwidget.dart';
import 'package:movies12/customwidgets/permissonpage_customwidget.dart';

import 'package:movies12/screens/languagepage.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {

  bool checkes = false;

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
            Spacer(flex: 7,),
            Text("We Need a Few Permissions ?",style: Theme.of(context).textTheme.headlineLarge,),
            Spacer(flex: 3,),
            CustomBox2(image:"image/Vector.png", title: "Location", subTitle: "To Verify Address Details"),
            Spacer(),
            CustomBox2(image:"image/sms.png", title: "SMS", subTitle: "To Check Your Eligibility & Loan Amount"),
            Spacer(),
            CustomBox2(image:"image/install.png", title: "Installed Apps", subTitle: "To Enhance Credit Profile"),
            Spacer(),
            CustomBox2(image:"image/camera.png", title: "Media & Photos", subTitle: "To Enhance Credit Profile"),
            Spacer(),
            CustomBox2(image:"image/device.png", title: "Device Information", subTitle: "To Securely Link Application To Phone"),
            Spacer(flex: 2,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 10,),
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    activeColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    checkColor: Theme.of(context).cardColor,
                    shape: CircleBorder(),
                    value: checkes, onChanged: (value) {
                    setState(() {
                      checkes=!checkes;
                    });
                  },),
                ),
                SizedBox(width: 10,),
                Flexible(child: Text("I Authorize Money View To Access And Callect The Above Mentioned Data",style: Theme.of(context).textTheme.headline1,)),
              ],
            ),
            Spacer(flex: 2,),
            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Language();
              },));
            }, data: "Get Started"),
            Spacer(flex: 7,),
          ],
        ),

      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:movies12/customwidgets/introscreens%20widget.dart';
import 'package:movies12/screens/introduction%20screens/frame3.dart';



class FrameTwo extends StatefulWidget {
  const FrameTwo({Key? key}) : super(key: key);

  @override
  State<FrameTwo> createState() => _FrameTwoState();
}

class _FrameTwoState extends State<FrameTwo> {
  @override
  Widget build(BuildContext context) {
   return  introscreen(image: "image/Kerfin 2.png", introduction: "Enjoy Faster show Booking through our Recommendations Taiored For You.", onpressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return FrameThree();
      },));
    },);
  }
}

import 'package:flutter/material.dart';

import 'package:movies12/customwidgets/introscreens%20widget.dart';
import 'package:movies12/screens/homepage.dart';


class FrameThree extends StatefulWidget {
  const FrameThree({Key? key}) : super(key: key);

  @override
  State<FrameThree> createState() => _FrameThreeState();
}

class _FrameThreeState extends State<FrameThree> {
  @override
  Widget build(BuildContext context) {
    return  introscreen(image: "image/Kerfin 3.png", introduction: "Forgot To Grad Your Movie Sancks? No Worries ? You Can Still Order Them Even After Booking Your Tickers.", onpressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Movies();
      },));
    },);
  }
}

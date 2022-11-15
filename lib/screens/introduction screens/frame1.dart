import 'package:flutter/material.dart';
import 'package:movies12/customwidgets/introscreens%20widget.dart';

import 'package:movies12/screens/introduction%20screens/frame2.dart';

class FrameOne extends StatefulWidget {
  const FrameOne({Key? key}) : super(key: key);

  @override
  State<FrameOne> createState() => _FrameOneState();
}

class _FrameOneState extends State<FrameOne> {
  @override
  Widget build(BuildContext context) {
    return introscreen(image: "image/Kerfin 1.png", introduction: "Now Save Money On Your MovieTickets With Free Discount CouponsFrom Restaurants & Cafes", onpressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return FrameTwo();
      },));
    },);
  }
}

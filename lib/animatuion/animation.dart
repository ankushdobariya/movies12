import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(duration: Duration(seconds: 2),vsync: this,
  )..repeat(reverse: true)..velocity;

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(

      begin: Offset.zero,
      end:  Offset(0.5,0.0)
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.slowMiddle,
  ));
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child:  Image.asset("image/Download.png",height: 100,),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:movies12/screens/splashscreen.dart';

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => const MyApp(), // Wrap your app
//   ),
// );
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           cardColor: const Color(0xffE72626),
//           backgroundColor: const Color(0xff191A32),
//           textTheme: const TextTheme(
//             headline2: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
//             headline1: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),
//             headlineLarge: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
//           )
//
//       ),
//       useInheritedMediaQuery: true,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//
//       darkTheme: ThemeData.dark(),
//       home: const HomePage(),
//     );
//   }
// }
//
 void main()
 {
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
          cardColor: const Color(0xffE72626),
          backgroundColor: const Color(0xff191A32),
          textTheme: const TextTheme(
            headline2: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
            headline1: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),
            headlineLarge: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          )

      ),
     home: HomePage(),
   ));
 }



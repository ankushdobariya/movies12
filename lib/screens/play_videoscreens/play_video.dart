// import 'package:appinio_video_player/appinio_video_player.dart';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
//
//
//
// class MyHomePage extends StatefulWidget {
//   int a;
//   String video;
//   String title;
//
//   MyHomePage(this.a,this.video,this.title, {Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late VideoPlayerController _videoPlayerController,
//       _videoPlayerController2,
//       _videoPlayerController3;
//
//   late CustomVideoPlayerController _customVideoPlayerController;
//   late CustomVideoPlayerWebController _customVideoPlayerWebController;
//
//   final CustomVideoPlayerSettings _customVideoPlayerSettings =
//   const CustomVideoPlayerSettings();
//
//   final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
//   CustomVideoPlayerWebSettings(
//     src: longVideo,
//   );
//
//   getVideo()
//    {
//     _videoPlayerController = VideoPlayerController.network(
//       widget.video,
//     )..initialize().then((value) => setState(() {}));
//     _videoPlayerController2 = VideoPlayerController.network(widget.video);
//     _videoPlayerController3 = VideoPlayerController.network(widget.video);
//     _customVideoPlayerController = CustomVideoPlayerController(
//
//       context: context,
//       videoPlayerController: _videoPlayerController,
//       customVideoPlayerSettings: _customVideoPlayerSettings,
//       additionalVideoSources: {
//         "240p": _videoPlayerController2,
//         "480p": _videoPlayerController3,
//         "720p": _videoPlayerController,
//       },
//     );
//     _customVideoPlayerWebController = CustomVideoPlayerWebController(
//       webVideoPlayerSettings: _customVideoPlayerWebSettings,
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getVideo();
//     print(widget.video);
//   }
//
//   @override
//   void dispose() {
//     _customVideoPlayerController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Theme.of(context).backgroundColor,
//       centerTitle: true,
//       title: Text(widget.title,style: Theme.of(context).textTheme.headline2,),
//       ),
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Container(
//         width: size.width,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("image/Group 1.png"),fit: BoxFit.fill
//           )
//         ),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 50),
//             kIsWeb
//                 ? Expanded(
//               child: CustomVideoPlayerWeb(
//                 customVideoPlayerWebController:
//                 _customVideoPlayerWebController,
//               ),
//             )
//                 : CustomVideoPlayer(
//               customVideoPlayerController: _customVideoPlayerController,
//             ),
//             Text("Name : ${widget.title}",style: Theme.of(context).textTheme.headlineLarge,),
//             Text("${widget.video}")
//
//             // CupertinoButton(
//             //   child: const Text("Play Fullscreen"),
//             //   onPressed: () {
//             //     if (kIsWeb) {
//             //       _customVideoPlayerWebController.setFullscreen(true);
//             //       _customVideoPlayerWebController.play();
//             //     } else {
//             //       _customVideoPlayerController.setFullscreen(true);
//             //       _customVideoPlayerController.videoPlayerController.play();
//             //     }
//             //   },
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// String longVideo = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
//
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:movies12/screens/play_videoscreens/video_introduction.dart';

import 'package:video_player/video_player.dart';

class SamplePlayer extends StatefulWidget {

  final int index;
  final String videoUrl;
  final String videoTitle;
  final String videoIndustry;
  final String videoView;

   SamplePlayer(this.index,this.videoUrl,this.videoTitle,this.videoIndustry,this.videoView);


  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  FlickManager? flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(videoPlayerController: VideoPlayerController.network(widget.videoUrl),
    )..flickControlManager!.toggleFullscreen();
  }

  @override
  void dispose() {
    flickManager!.dispose();
    super.dispose();
  }

  Future<bool>goBack()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return VideoIntroduction(widget.index, widget.videoUrl, widget.videoTitle, widget.videoIndustry, widget.videoView);
    },));
    return Future.value(true);
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: goBack, child: FlickVideoPlayer(
        flickManager: flickManager!
    ));
  }

}
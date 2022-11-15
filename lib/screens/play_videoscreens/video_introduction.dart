import 'package:flutter/material.dart';
import 'package:movies12/animatuion/animation.dart';
import 'package:movies12/screens/play_videoscreens/play_video.dart';

class VideoIntroduction extends StatefulWidget {
 final int index;
 final String videoUrl;
 final String videoTitle;
 final String videoIndustry;
 final String totalViews;

  VideoIntroduction(this.index,this.videoUrl,this.videoTitle,this.videoIndustry,this.totalViews, {Key? key}) : super(key: key);

  @override
  State<VideoIntroduction> createState() => _VideoIntroductionState();
}
class _VideoIntroductionState extends State<VideoIntroduction> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(widget.videoTitle,style: Theme.of(context).textTheme.headline2,),
      ),
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/Group 1.png"),fit: BoxFit.fill
            )
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("image/movie thumbnail.png"),fit: BoxFit.fill
                )
              ),
              child: Column(
                children: [
                  Spacer(flex: 15,),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SamplePlayer(widget.index,widget.videoUrl,widget.videoTitle,widget.videoIndustry,widget.totalViews);
                        },));
                      },
                      child: Image.asset("image/playicon.png",scale:  1.5,)),


                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 3,),
                      MyStatefulWidget(),
                      Spacer()
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Text(widget.videoTitle,style: Theme.of(context).textTheme.headlineLarge,),
            const SizedBox(height: 10,),
            Text("Print:",style: Theme.of(context).textTheme.headline2,),
            const SizedBox(height: 10,),
            Text("View : ${widget.totalViews}",style: Theme.of(context).textTheme.headline2,),
            const SizedBox(height: 10,),
            Text("Industry : ${widget.videoIndustry}",style: Theme.of(context).textTheme.headline2,),

          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}

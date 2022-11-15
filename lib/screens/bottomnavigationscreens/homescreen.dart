import 'package:flutter/material.dart';
import 'package:movies12/api_service/all_api_service.dart';
import 'package:movies12/customwidgets/drawer_customWidget.dart';
import 'package:movies12/customwidgets/homescreen_customWidget.dart';
import 'package:movies12/modelclass/bollywood_model.dart';
import 'package:movies12/modelclass/hollywoowd_model.dart';
import 'package:movies12/modelclass/model.dart';
import 'package:movies12/modelclass/southindian_model.dart';
import 'package:movies12/modelclass/trailer_model.dart';
import 'package:movies12/screens/play_videoscreens/video_introduction.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff191A32),
        centerTitle: true,
        title: const Text("Movie", style: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.search, color: Colors.white, size: 35,))
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff191A32),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
             Padding(
              padding: EdgeInsets.only(top: 35),
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xff191A32),
                    image: DecorationImage(
                        image: AssetImage("image/drawerheader.png"),
                        fit: BoxFit.fitHeight)
                ),
                child: SizedBox(),
              ),
            ),
            DrawerBox(text: "Dark Theme", image: "image/theme 1.png"),
            DrawerBox(text: "Download", image: "image/download 1.png"),
            DrawerBox(text: "About", image: "image/info  1.png"),
            DrawerBox(text: "Privacy", image: "image/privacy 1.png"),
            DrawerBox(text: "Rate", image: "image/star  1.png"),
            DrawerBox(text: "about", image: "image/about 1.png")
          ],
        ),
      ),
      backgroundColor: const Color(0xff191A32),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.78,

              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 20),
                    height: size.height * 0.27,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/baner.png"),fit: BoxFit.fill
                        )
                    ),
                  ),
                  SingleChildScrollView(
                    child: FutureBuilder(
                      future: getCategory(),
                      builder: (context,AsyncSnapshot<CategoryData> snapshot) {
                        if(snapshot.hasError){
                          return const Text("Data Not Found");
                        }else if(snapshot.connectionState == ConnectionState.waiting)
                        {
                          return const CircularProgressIndicator();
                        }else{
                          return SizedBox(
                            height: size.height * 0.47,

                            child: ListView.builder(

                              itemCount:snapshot.data!.count,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    MovieRow(categoryName: snapshot.data!.categories![index].categoryName.toString()),
                                    FutureBuilder(
                                      future: getCategory(),
                                      builder: (context,AsyncSnapshot<CategoryData> snapshot) {
                                        if(snapshot.hasError){
                                          return const Text("No Data");
                                        }
                                        else if(snapshot.connectionState == ConnectionState.waiting)
                                        {
                                          return const Center(child: CircularProgressIndicator());
                                        }
                                        else if(snapshot.data!.categories![index].cid== 59)
                                        {
                                           return Container(
                                              margin: const EdgeInsets.only(top: 10, left: 15),
                                              height: size.height * 0.23,
                                              width: size.width,
                                              child: FutureBuilder(
                                                future: getHollyWoodData(),
                                                builder: (context,AsyncSnapshot<HollywoodData> snapshot) {
                                                  if(snapshot.hasError)
                                                  {
                                                    return const Text("Data Not Found");
                                                  }
                                                  else if(snapshot.connectionState == ConnectionState.waiting)
                                                  {
                                                    return const Center(child: CircularProgressIndicator());
                                                  }
                                                  else
                                                  {
                                                    return ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: snapshot.data!.count,
                                                      itemBuilder: (context, index) {
                                                        return MovieBox(movieTitle: snapshot.data!.posts![index].videoTitle.toString(), onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                            return VideoIntroduction(index,
                                                                snapshot.data!.posts![index].videoUrl.toString(),
                                                                snapshot.data!.posts![index].videoTitle.toString(),
                                                                snapshot.data!.posts![index].categoryName.toString(),
                                                                snapshot.data!.posts![index].totalViews.toString()
                                                            );
                                                          },));
                                                        },);
                                                      },);
                                                  }},)
                                          );
                                        }
                                        else if(snapshot.data!.categories![index].cid== 53)
                                        {
                                          return Container(
                                              margin: const EdgeInsets.only(top: 10, left: 15),
                                              height: size.height * 0.23,
                                              width: size.width,
                                              child: FutureBuilder(
                                                future: getTrailer(),
                                                builder: (context,AsyncSnapshot<TrailerData> snapshot) {
                                                  if(snapshot.hasError)
                                                  {
                                                    return const Text("Data Not Found");
                                                  }
                                                  else if(snapshot.connectionState == ConnectionState.waiting)
                                                  {
                                                    return const Center(child: CircularProgressIndicator());
                                                  }
                                                  else
                                                  {
                                                    return ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: snapshot.data!.count,
                                                      itemBuilder: (context, index) {
                                                        return MovieBox(movieTitle: snapshot.data!.posts![index].videoTitle.toString(), onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                            return VideoIntroduction(index,
                                                                snapshot.data!.posts![index].videoUrl.toString(),
                                                                snapshot.data!.posts![index].videoTitle.toString(),
                                                                snapshot.data!.posts![index].categoryName.toString(),
                                                                snapshot.data!.posts![index].totalViews.toString()
                                                            );
                                                          },));
                                                        },);
                                                      },);
                                                  }},)
                                          );
                                        }
                                        else if(snapshot.data!.categories![index].cid== 35)
                                        {
                                          return Container(
                                              margin: const EdgeInsets.only(top: 10, left: 15),
                                              height: size.height * 0.23,
                                              width: size.width,
                                              child: FutureBuilder(
                                                future: getoBllyWoodData(),
                                                builder: (context,AsyncSnapshot<BollywoodData> snapshot) {
                                                  if(snapshot.hasError)
                                                  {
                                                    return const Text("Data Not Found");
                                                  }
                                                  else if(snapshot.connectionState == ConnectionState.waiting)
                                                  {
                                                    return const Center(child: CircularProgressIndicator());
                                                  }
                                                  else
                                                  {
                                                    return ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: snapshot.data!.count,
                                                      itemBuilder: (context, index) {
                                                        return MovieBox(movieTitle: snapshot.data!.posts![index].videoTitle.toString(), onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                            return VideoIntroduction(index,
                                                                snapshot.data!.posts![index].videoUrl.toString(),
                                                                snapshot.data!.posts![index].videoTitle.toString(),
                                                                snapshot.data!.posts![index].categoryName.toString(),
                                                                snapshot.data!.posts![index].totalViews.toString()
                                                            );
                                                          },));
                                                        },);
                                                      },);
                                                  }},)
                                          );
                                        }else
                                        {
                                          return Container(
                                              margin: const EdgeInsets.only(top: 10, left: 15),
                                              height: size.height * 0.23,
                                              width: size.width,
                                              child: FutureBuilder(
                                                future: getSouthIndian(),
                                                builder: (context,AsyncSnapshot<SouthIndianData> snapshot) {
                                                  if(snapshot.hasError)
                                                  {
                                                    return const Text("Data Not Found");
                                                  }
                                                  else if(snapshot.connectionState == ConnectionState.waiting)
                                                  {
                                                    return const Center(child: CircularProgressIndicator());
                                                  }
                                                  else
                                                  {
                                                    return ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: snapshot.data!.count,
                                                      itemBuilder: (context, index) {
                                                        return MovieBox(movieTitle: snapshot.data!.posts![index].videoTitle.toString(), onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                            return VideoIntroduction(index,
                                                                snapshot.data!.posts![index].videoUrl.toString(),
                                                                snapshot.data!.posts![index].videoTitle.toString(),
                                                                snapshot.data!.posts![index].categoryName.toString(),
                                                                snapshot.data!.posts![index].totalViews.toString()
                                                            );
                                                          },));
                                                        },);
                                                      },);
                                                  }},)
                                          );
                                        }
                                      },),
                                  ],
                                );
                              },),
                          );
                        }
                      },),
                  )





                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
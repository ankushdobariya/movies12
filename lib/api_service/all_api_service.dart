

import 'package:http/http.dart' as http;
import 'package:movies12/modelclass/bollywood_model.dart';
import 'package:movies12/modelclass/hollywoowd_model.dart';
import 'package:movies12/modelclass/model.dart';
import 'package:movies12/modelclass/southindian_model.dart';
import 'package:movies12/modelclass/trailer_model.dart';

Future<CategoryData>getCategory()
async{
  CategoryData categoryData = CategoryData();
  final url = Uri.parse("http://165.22.221.141/n1/api/get_category_index?api_key=cda11xgk4i3Sp8NTYMreCnjAGvzQVXHsfJbwZPULqlyD1aI26m");
  http.Response response =await http.get(url);

  if(response.statusCode == 200)
    {
       categoryData = categoryDataFromJson(response.body);
    }else
      {
        print(response.reasonPhrase);
      }

  return categoryData;
}

Future<BollywoodData> getoBllyWoodData()
async {
  BollywoodData bollywoodData = BollywoodData();
  final url = Uri.parse("http://165.22.221.141/n1/api/get_category_videos?id=35&page=1&count=20&sort=n.id%20DESC&api_key=cda11xgk4i3Sp8NTYMreCnjAGvzQVXHsfJbwZPULqlyD1aI26m");
  http.Response response =await http.get(url);
  if(response.statusCode == 200)
    {
      bollywoodData = bollywoodDataFromJson(response.body);
    }
  else{
    print(response.reasonPhrase);
  }

  return bollywoodData;
}

Future<HollywoodData>getHollyWoodData()
async {
  HollywoodData hollywoodData =HollywoodData();
  final url = Uri.parse("http://165.22.221.141/n1/api/get_category_videos?id=59&page=1&count=20&sort=n.id%20DESC&api_key=cda11xgk4i3Sp8NTYMreCnjAGvzQVXHsfJbwZPULqlyD1aI26m");
  http.Response response =await http.get(url);

  if(response.statusCode == 200)
    {
      hollywoodData = hollywoodDataFromJson(response.body);
    }
  else{
    print(response.reasonPhrase);
  }

  return hollywoodData;
}

Future<TrailerData>getTrailer()async{

  TrailerData trailerData = TrailerData();
  final url = Uri.parse("http://165.22.221.141/n1/api/get_category_videos?id=53&page=1&count=20&sort=n.id%20DESC&api_key=cda11xgk4i3Sp8NTYMreCnjAGvzQVXHsfJbwZPULqlyD1aI26m");
  http.Response response = await http.get(url);

  if(response.statusCode == 200)
    {
      trailerData = trailerDataFromJson(response.body);
    }else{
    print(response.reasonPhrase);
  }

  return trailerData;
}

Future<SouthIndianData> getSouthIndian()async{
  SouthIndianData southIndianData = SouthIndianData();
  final url = Uri.parse("http://165.22.221.141/n1/api/get_category_videos?id=21&page=1&count=20&sort=n.id%20DESC&api_key=cda11xgk4i3Sp8NTYMreCnjAGvzQVXHsfJbwZPULqlyD1aI26m");
  http.Response response = await http.get(url);

  if(response.statusCode == 200)
    {
      southIndianData = southIndianDataFromJson(response.body);
    }else{
    print(response.reasonPhrase);
  }
  return southIndianData;
}



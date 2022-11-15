//     final categoryData = categoryDataFromJson(jsonString);

import 'dart:convert';

CategoryData categoryDataFromJson(String str) => CategoryData.fromJson(json.decode(str));

String categoryDataToJson(CategoryData data) => json.encode(data.toJson());

class CategoryData {
  String? status;
  int? count;
  List<Categories>? categories;

  CategoryData({this.status, this.count, this.categories});

  CategoryData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    count = json['count'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['count'] = this.count;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? cid;
  String? categoryName;
  String? categoryImage;
  int? videoCount;

  Categories(
      {this.cid, this.categoryName, this.categoryImage, this.videoCount});

  Categories.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
    videoCount = json['video_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cid'] = this.cid;
    data['category_name'] = this.categoryName;
    data['category_image'] = this.categoryImage;
    data['video_count'] = this.videoCount;
    return data;
  }
}

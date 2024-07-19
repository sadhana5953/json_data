
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/jsonModal.dart';

class jsonProvider extends ChangeNotifier
{
  List<JsonImage> imageList = [];
  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/photo.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList()
  async {
    List photo = await jsonParsing() ;
    imageList = photo.map((e) => JsonImage.fromMap(e),).toList();
    notifyListeners();

  }
  PhotoProvider()
  {
    fromList();
  }

}

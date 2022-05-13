
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class SocialService extends ChangeNotifier{
  final socialBox =  Hive.openBox('social');
  final box = Hive.box('social');


  void createSocial(link, password) async{
    Map socialMap = {
      "link": link,
      "password": password,
      "created_at": DateTime.now(),
      "edited_at": DateTime.now()
    };

    await box.add(socialMap);
  }

  void editSocial(link, password) async {

    Map socialMap = {
        "link": link,
        "password": password,
        "created_at": DateTime.now(),
        "edited_at": DateTime.now()
    };

  }
}
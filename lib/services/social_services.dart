
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../routes/auto_route.gr.dart';


class SocialService extends ChangeNotifier{
  // final socialBox =  Hive.openBox('social');
  // final box = Hive.box('social');

  createSocial(link, password) async{

    var passwords = await Hive.openBox('password');
    var pk = await passwords.get('length');

    var newJson = {
      'id': pk+1,
      'name': link,
      'password': password,
      'created_time': DateTime.now(),
      'edited_time': DateTime.now(),
    };

    var currPass = passwords.get('password');
    print(currPass);
    currPass.add(newJson);

    return true;
  }


  getSocial() {
    var passwords = Hive.box('password');
    var pass = passwords.get('password');
    return pass;
  }

  getLength() async{
    var passwords = await Hive.openBox('password');
    var len =  await passwords.get('length');
    return len;
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
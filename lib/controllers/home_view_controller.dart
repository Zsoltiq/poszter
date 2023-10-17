import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  int csillagokDB = 3;

  void novelo() {
    if (csillagokDB < 5) {
      csillagokDB++;
      update();
    }
  }

  void csokkento() {
    if (csillagokDB > 0) {
      csillagokDB--;
      update();
    }
  }

  List<Icon> getStars() {
    List<Icon> temp = [];
    for (int i = 0; i < 5; i++) {
      temp.add(Icon((i<csillagokDB? Icons.star:Icons.star_border),color:Colors.amber));
    }
    return temp;
  }
}

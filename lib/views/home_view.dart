import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/home_view_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            body:Image.asset('images/hustle.jpg',width: double.infinity,height:double.infinity,fit: BoxFit.cover,).blurred(
              blur:10,
              overlay: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width:250, child: Image.asset('images/hustle.jpg')),
                Text(
                  "Hustle",
                  style: TextStyle(fontSize: 30),
                ),
                Text("2022"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.getStars(),
                ),
                SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 120,
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                              child: Icon(Icons.remove),
                              color: Colors.red,
                              onPressed: () {
                                controller.csokkento();
                              })),
                      SizedBox(
                          width: 120,
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                              child: Icon(Icons.add),
                              color: Colors.green,
                              onPressed: () {
                                controller.novelo();
                              })),
                    ],
                  ),
                )
              ],
            ),
            )
          );
        });
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.yellow,
              size: 40,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'User Location',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => Text(
                controller.latitude.value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Obx(
              () => Text(
                controller.longitude.value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Obx(
              () => Text(
                controller.address.value,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

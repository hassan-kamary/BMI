import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hassankamary_getx/controller/class.dart';

class Three extends StatefulWidget {
  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  Copy controller = Get.put(Copy(), permanent: true);
  Copy2 controller2 = Get.put(Copy2(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Divider(
            thickness: 2,
          ),
          Text(
            "name:${controller.name}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "gender:${controller2.gender}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "age:${controller2.age}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "weight:${controller2.weight}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "height:${controller2.height}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
          Text(
            "result:${controller2.result}",
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

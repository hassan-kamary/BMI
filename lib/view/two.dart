import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hassankamary_getx/controller/class.dart';

class Two extends StatelessWidget {
  final GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> formkey5 = GlobalKey<FormState>();
  final GlobalKey<FormState> formkey4 = GlobalKey<FormState>();
  Copy controller1 = Get.put(Copy(), permanent: true);
  double res = 0.0;
  String? genderd;
  String? aged;
  String? weightd;
  String? heightd;
  String? ress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: GetBuilder<GenderMandF>(
            init: GenderMandF(),
            builder: ((controller) => Column(
                  children: [
                    Text(
                      "welcome ${controller1.name}",
                      style: TextStyle(fontSize: 30),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "gender:",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "male",
                            groupValue: genderd,
                            onChanged: (val) {
                              controller.male();
                              genderd = val as String?;
                            }),
                        Text(
                          "male",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Radio(
                            value: "female",
                            groupValue: genderd,
                            onChanged: (val) {
                              controller.female();
                              genderd = val as String?;
                            }),
                        Text(
                          "female",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "enter age:",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Form(
                          key: formkey2,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              aged = value;
                              return value!.isEmpty
                                  ? "enter your age please"
                                  : null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text("enter your age"),
                            ),
                          )),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "enter weight:",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Form(
                          key: formkey5,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              weightd = value;
                              return value!.isEmpty
                                  ? "enter your weight please"
                                  : null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text("enter your weight"),
                            ),
                          )),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "enter height:",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Form(
                          key: formkey4,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              heightd = value;
                              return value!.isEmpty
                                  ? "enter your height please"
                                  : null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.grey)),
                              label: Text("enter your height"),
                            ),
                          )),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              // res = double.parse(weightd!) /
                              //     (double.parse(heightd!) * double.parse(heightd!));
                              if (formkey2.currentState!.validate() &&
                                  formkey5.currentState!.validate() &&
                                  formkey4.currentState!.validate()) {
                                res = double.parse(heightd!) /
                                    (double.parse(weightd!) *
                                        double.parse(weightd!));
                                if (res < 16.0) {
                                  Get.defaultDialog(
                                      title: "result",
                                      backgroundColor: Colors.yellowAccent[400],
                                      middleText: "severely underweight");

                                  ress = "severely underweight";
                                }

                                if (16.0 < res && res < 18.4) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.yellowAccent[400],
                                    middleText: "underweight",
                                  );

                                  ress = "underweight";
                                }

                                if (18.5 < res && res < 24.9) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.green,
                                    middleText: "normal",
                                  );

                                  ress = "normal";
                                }

                                if (25.0 < res && res < 29.9) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.yellowAccent[600],
                                    middleText: "moderately obese",
                                  );

                                  ress = "moderately obese";
                                }

                                if (30.0 < res && res < 34.9) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.red,
                                    middleText: "overweight",
                                  );

                                  ress = "overweight";
                                }

                                if (35.0 < res && res < 39.9) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.red,
                                    middleText: "severely obses",
                                  );

                                  ress = "severely obses";
                                }
                                ;
                                if (40.0 < res) {
                                  Get.defaultDialog(
                                    title: "result",
                                    backgroundColor: Colors.red,
                                    middleText: "morbidly obses",
                                  );

                                  ress = "morbidly obses";
                                }
                              }
                            },
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "okey",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              print(
                                genderd,
                              );
                              print(
                                aged,
                              );
                              if (formkey2.currentState!.validate() &&
                                  formkey5.currentState!.validate() &&
                                  formkey4.currentState!.validate()) {
                                Get.toNamed("three", arguments: {
                                  "age": aged,
                                  "gender": genderd,
                                  "weight": weightd,
                                  "height": heightd,
                                  "result": ress,
                                });
                              }
                              // print(res);
                            },
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "result",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    )
                  ],
                ))),
      )),
    );
  }
}

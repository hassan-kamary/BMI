import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? named;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("images/BMI.jpg"),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 200),
                  child: Form(
                      key: formkey,
                      child: Container(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  named = value;
                                  return value!.isEmpty
                                      ? "enter your name please"
                                      : null;
                                },
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  label: Text("enter your name"),
                                  hintText: "full name",
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (formkey.currentState!.validate()) {
                                          Get.toNamed("two", arguments: {
                                            "name": named,
                                          });
                                        }
                                      },
                                      color: Colors.grey[200],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        "login",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}

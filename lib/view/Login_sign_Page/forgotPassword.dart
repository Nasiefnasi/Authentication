
import 'package:companytask/controller/authfunction.dart';
import 'package:companytask/view/core.dart';
import 'package:companytask/view/textfiled/modeltextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
      final authcontol = Get.put(Authcontroler());

    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Container(
        height: mediaquery.height,
        width: mediaquery.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              height: mediaquery.height * .30,
              width: mediaquery.width * .9,
              child: Card(
                  child: Column(
                    children: [
                      hight30,
                      const Text(
                        'Enter Your Email',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      hight20,
                      TextFormfildWidget(obscureText: false,contro:authcontol.resetmail ,
                          hinttext: "E-mail", Iconss: const Icon(Icons.mail)),
                      ElevatedButton(
                          onPressed: () {
                            authcontol.forgotpassword();
                          },
                          child: const Text("Send Rest Link")),
                    ],
                  ),
                  elevation: 5,
                  color: const Color.fromARGB(171, 254, 254, 253),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ),
      )),
    );
  }
}

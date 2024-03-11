

import 'package:companytask/controller/authfunction.dart';
import 'package:companytask/view/core.dart';
import 'package:companytask/view/Login_sign_Page/forgotPassword.dart';
import 'package:companytask/view/Login_sign_Page/sign_inPage.dart';
import 'package:companytask/view/textfiled/modeltextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var control = Get.put(Authcontroler());
  var mediaqury;

  @override
  Widget build(BuildContext context) {
    mediaqury = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  hight30,
                  Container(
                    width: mediaqury.size.width * 0.80,
                    height: mediaqury.size.width * 0.50,
                    child: Image.asset("image/3dsign.png"),
                  ),
                  hight30,
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  hight10,
                  const Text(
                    "please login to continue using our app",
                    style: TextStyle(color: kGreycolor),
                  ),
                  hight20,
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormfildWidget(
                          obscureText: false,
                          contro: control.email,
                          hinttext: 'E-mail',
                          Iconss: const Icon(Icons.mail),
                          validators: (value) {
                            if (value == null) {
                              return 'Please enter your email';
                            } else if (!GetUtils.isEmail(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        TextFormfildWidget(
                          contro: control.password,
                          hinttext: 'Password',
                          Iconss: const Icon(Icons.lock),
                          obscureText: true,
                          validators: (value) {
                            if (value == null) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "forgot password",
                            style: TextStyle(color: kbuttoncolorblue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => SizedBox(
                      width: mediaqury.size.width * 0.4,
                      height: mediaqury.size.height * 0.05,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.greenAccent),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            control.loginusers(context);
                            control.email.clear();
                            control.password.clear();
                          }
                        },
                        child: control.loading.value
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                      ),
                    ),
                  ),
                  hight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: kGreycolor),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  hight30,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

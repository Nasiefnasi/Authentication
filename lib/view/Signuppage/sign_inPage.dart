
import 'package:companytask/controller/authfunction.dart';
import 'package:companytask/view/core.dart';
import 'package:companytask/view/Login_sign_Page/loginPage/loginpage.dart';
import 'package:companytask/view/textfiled/modeltextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignPage extends StatelessWidget {
  const SignPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final cntol = Get.put(Authcontroler());
    var mediaqury = MediaQuery.of(context);
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    hight30,
                    SizedBox(
                      width: mediaqury.size.width * 0.80,
                      height: mediaqury.size.width * 0.50,
                      child: Image.asset("image/otpchar.png"),
                    ),
                    hight30,
                    const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    hight5,
                    const Text(
                      "Please fill the details and create account",
                      style: TextStyle(color: kGreycolor),
                    ),
                    hight20,
                    TextFormfildWidget(
                      obscureText: false,
                      contro: cntol.name,
                      hinttext: 'Name',
                      Iconss: const Icon(Icons.person),
                      validators: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    TextFormfildWidget(
                      obscureText: false,
                      contro: cntol.email,
                      hinttext: 'E-mail',
                      Iconss: const Icon(Icons.mail),
                      validators: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    TextFormfildWidget(
                      obscureText: true,
                      contro: cntol.password,
                      hinttext: 'Password',
                      Iconss: const Icon(Icons.lock),
                      validators: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    hight10,
                    SizedBox(
                      width: mediaqury.size.width * 0.4,
                      height: mediaqury.size.height * 0.05,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.greenAccent)),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            cntol.signpage(context);
                            cntol.name.clear();
                            cntol.email.clear();
                            cntol.password.clear();
                          }
                        },
                        child: cntol.loading.value
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Submit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            hight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: kGreycolor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:companytask/controller/authfunction.dart';
import 'package:companytask/view/core.dart';
import 'package:companytask/view/Login_sign_Page/loginpage.dart';
import 'package:companytask/view/textfiled/modeltextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignPage extends StatelessWidget {
  SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cntol = Get.put(Authcontroler());
    var mediaqury = MediaQuery.of(context);
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
                          child: Image.asset("image/otpchar.png")
                          ),
                      hight30,

                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
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
                        Iconss: Icon(Icons.person),
                      ),
                      TextFormfildWidget(
                        obscureText: false,
                        contro: cntol.email,
                        hinttext: 'E-mail',
                        Iconss: Icon(Icons.mail),
                      ),
                      TextFormfildWidget(
                        obscureText: false,
                        contro: cntol.password,
                        hinttext: 'Password',
                        Iconss: Icon(Icons.lock),
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
                            cntol.signpage(context);
                            cntol.name.clear();
                            cntol.email.clear();
                            cntol.password.clear();
                          },
                          child:
                               cntol.loading.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              :Text(
                            "Submit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),

                    ])),
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
                        (route) => false);
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

  void _showbottomsheett(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
      ),
      elevation: 50,
      backgroundColor: const Color.fromARGB(38, 22, 23, 23),
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0)),
              color: Color.fromARGB(255, 254, 254, 254)),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () async {
                       
                      },
                      child: const Text('Employess'),
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 8, 105, 134)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))))),
              SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () async {
                       
                      },
                      child: const Text('User'),
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.amber),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))))),
            ],
          ),
        );
      },
    );
  }
}

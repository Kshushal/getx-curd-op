import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:test2/curd_opration/controller/controller.dart';
import 'package:test2/curd_opration/view/testApi.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController mobileController = TextEditingController();

    final dbController = Get.put(DataController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.2, bottom: size.height * 0.02),
                  child: Image.asset(
                    height: size.height * 0.2,
                    "assets/log-in.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    controller: nameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    controller: mobileController,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlinedButton(
                    onPressed: () {
                      dbController.postApi(nameController.text,
                          emailController.text, mobileController.text);
                      Get.to(() => TestApi());
                    },
                    child: const Text("login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
                const SizedBox(
                  height: 15,
                ),
                const Text("OR",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 15,
                ),
                const Text("If you don't have an account",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                OutlinedButton(
                    onPressed: () {},
                    child: const Text("Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

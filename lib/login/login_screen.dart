import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.onPrimary,
                    focusColor: Theme.of(context).colorScheme.onPrimary,
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 25, 20, 20),
                            width: 1.5)),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 9, 7, 7),
                          width: 1.5,
                        )),
                    errorMaxLines: 2,
                    disabledBorder: const OutlineInputBorder(
                        gapPadding: 0, borderRadius: BorderRadius.zero),
                    isDense: true,
                    label: const Text(
                      "Email",
                      style: TextStyle(color: Color.fromARGB(255, 4, 3, 3)),
                    ),
                    labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.onPrimary,
                    focusColor: Theme.of(context).colorScheme.onPrimary,
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 9, 8, 8), width: 1.5)),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 12, 10, 10),
                          width: 1.5,
                        )),
                    errorMaxLines: 2,
                    disabledBorder: const OutlineInputBorder(
                        gapPadding: 0, borderRadius: BorderRadius.zero),
                    isDense: true,
                    label: const Text(
                      "Password",
                      style: TextStyle(color: Color.fromARGB(255, 8, 6, 6)),
                    ),
                    labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlinedButton(
                    onPressed: () {},
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

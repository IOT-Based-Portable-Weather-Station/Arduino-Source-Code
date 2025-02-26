import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weatther_station/authpage/Pages/authpage.dart';

import '../../components/button.dart';
import '../../components/inputTextField.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign up with email and password
  void signUpWithEmail() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        Navigator.pop(context);
      } else {
        showErrorMessage("Password do not match");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(message),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AuthPage()));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Icon(
                  Icons.login_outlined,
                  size: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Let's get you registered ...",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 42, 42, 42)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 5,
                ),
                inputTextField(
                  controller: emailController,
                  obscureText: false,
                  hintText: "Enter e-mail",
                ),
                const SizedBox(
                  height: 5,
                ),
                inputTextField(
                    controller: passwordController,
                    hintText: "Enter password",
                    obscureText: true),
                const SizedBox(
                  height: 5,
                ),
                inputTextField(
                    controller: confirmPasswordController,
                    hintText: "Confirm password",
                    obscureText: true),
                const SizedBox(
                  height: 5,
                ),
                Button(onTap: signUpWithEmail, text: "Sign Up"),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:urja_app/feature_login/widgets/my_button.dart';
import 'package:urja_app/feature_login/widgets/my_textfield.dart';
import 'package:urja_app/bottomnavigation.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method

  @override
  Widget build(BuildContext context) {
    void signUserIn() {
      (usernameController.text == "246510057" &&
              passwordController.text == "Ashu@123")
          ? Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Bottomnav()))
          : Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // logo
            const Icon(
              Icons.lock,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 50),

            // welcome back, you've been missed!
            const Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // username textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Consumer ID',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // // forgot password?
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Text(
            //         'Forgot Password?',
            //         style: TextStyle(color: Colors.red),
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),
          ],
        ),
      ),
    );
  }
}

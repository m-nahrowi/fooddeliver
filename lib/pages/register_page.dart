import 'package:flutter/material.dart';
import 'package:fooddeliver/components/my_textfield.dart';
import 'package:fooddeliver/components/my_button.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message, app slogan
            Text(
              "Let's create an account",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(height: 25),

            //  email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // passowrd textfield
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),

            const SizedBox(height: 10),

            // confirm passowrd textfield
            MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm password",
                obscureText: true),

            const SizedBox(height: 25),

            // sign up button
            MyButton(text: "Sign Up", onTap: () {}),

            const SizedBox(height: 25),

            // already have an account? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login Now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

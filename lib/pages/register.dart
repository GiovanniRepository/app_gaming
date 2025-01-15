import 'package:flutter/material.dart';
import 'package:gaming_app/components/my_button.dart';
import 'package:gaming_app/components/my_textfield.dart';
import 'package:gaming_app/components/square_tile.dart';

import 'homeview.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  //login without a database
  void register() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Homeview(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(79, 9, 248, 1),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset('assets/icons/nexus_legends.png'),
                SizedBox(height: size.height * 0.01),
                //welcome back,you have been missed
                Text(
                  "Sali a bordo!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                //username textfield
                MyTextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                SizedBox(height: size.height * 0.01),
                //email textfield
                MyTextfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: true,
                ),
                SizedBox(height: size.height * 0.01),
                //password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: size.height * 0.02),
                //forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Password Dimenticata?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                //signin Button
                MyButton(
                  text: 'Registrati',
                  onTap: register,
                ),
                SizedBox(height: size.height * 0.03),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Google button
                    SquareTile(imagePath: 'assets/images/Google.png'),

                    SizedBox(width: 25),
                    //Apple button
                    SquareTile(imagePath: 'assets/images/Apple.jpg')
                  ],
                ),
                const SizedBox(height: 50),
                //not a member?register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sei già registrato?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.01),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Accedi',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart ';
import 'package:login_app/components/my_button.dart';
import 'package:login_app/components/my_textfield.dart';
import 'package:login_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 241, 241),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),

                    //image
                    Image.asset(
                      'lib/images/user.png',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    //logo
                    // const Icon(
                    //   Icons.supervised_user_circle,
                    //   size: 100,
                    //   color: Color.fromARGB(255, 43, 47, 50),
                    // ),
                    const SizedBox(height: 10),

                    //welcome back, you've been missed!
                    Text(
                      'Welcome back to login screen!'.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(153, 224, 115, 25),
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 25),
                    //username textfield
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),

                    const SizedBox(height: 20),
                    //password textfield
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10.0),

                    //forgot password?
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'forgot password?',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    //sign in button
                    MyButton(
                      onTap: signUserIn,
                    ),
                    const SizedBox(height: 10.0),
                    //or continue with
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: .5,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or continue with',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: .5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //google + facebook sign in button
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SquareTile(
                          imagePath: 'lib/images/google.png',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SquareTile(
                          imagePath: 'lib/images/facebook.png',
                        ),
                      ],
                    ),
                    //not a member? Register Now

                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member? ',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ));
  }
}

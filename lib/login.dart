import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/mytextfiled.dart';
import 'package:flutter_application_2/components/mybutton.dart';
import 'package:flutter_application_2/components/squaretile.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

//text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//signuserin method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
           const SizedBox(height: 50),

          //logo
          Icon(
            Icons.lock,
            size: 50,
          ),

           const SizedBox(height: 50),

          //welcome back!!!
          Text(
            'Welcome back! You\'ve been missed!',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),

           const SizedBox(height: 25),

          //username textfield
          Mytextfield(
            controller: usernameController,
            hintText: 'username',
            obscureText: true,
            ),
          
          const SizedBox(height: 10),

          //password textfield
          Mytextfield(
            controller: passwordController,
            hintText: 'password',
            obscureText: false,
          ),

          const SizedBox(height:10),

          //fogort password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Row(
            children: [
              Text(
                'Forgot password?',
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
          ),

          const SizedBox(height: 25),

          //sigin button
          Mybutton(
            onTap: signUserIn,
            ),
          
          const SizedBox(height: 50),

          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
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
                        style: TextStyle(color: Colors.grey[700]),
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
        
        const SizedBox(height: 20),
                 //google sign in button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Squaretile(imagePath: 'lib/img/Google-Symbol.png')
            ],
          )
          //not a member? register now!!
        ],
      ),
    );
  }
}

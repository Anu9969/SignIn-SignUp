// ignore_for_file: file_names

import 'package:app1/component/EmailPassword.dart';
import 'package:app1/component/SignUpButton.dart';
import 'package:app1/component/SquareTile.dart';
import 'package:app1/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController passwordController=TextEditingController();
  final TextEditingController userName=TextEditingController();
  final TextEditingController name=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController phone=TextEditingController();
  final TextEditingController confirm=TextEditingController();
  void signUserIn(){}
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor:const Color.fromARGB(255, 238, 238, 246),
      body: SafeArea(
        child:SingleChildScrollView(
        child:Center(
          child :Column(
            children:  [

              const SizedBox(height: 40),
              //logo
              const Icon(Icons.lock_open_rounded,size:100),
      
              const SizedBox(height: 30),

              //welcome text
              const Text(
                "Welcome Explorer , explore our app to get free resources",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold ,
                  fontStyle: FontStyle.italic, // Make the text bold
                  letterSpacing: 1.5, // Add some letter spacing
                ),
              ),
              const SizedBox(height: 10),
              Center(child:
              Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Column(
                    children: [

              //Email
              const SizedBox(height: 25),
              EmailPassword(controller: name, hintText: 'Enter Your Name ', obscureText: false),

              const SizedBox(height: 25),
              EmailPassword(controller: userName, hintText: 'Enter Your Username', obscureText: false),

              const SizedBox(height: 25),
              EmailPassword(controller: phone, hintText: 'Enter Your Phone Number', obscureText: false),

              const SizedBox(height: 25),
              EmailPassword(controller: email, hintText: 'Enter Your Email', obscureText: false),

              //Password
              const SizedBox(height: 25),
              EmailPassword(controller: passwordController, hintText: "Create Password", obscureText: true),

              const SizedBox(height: 25),
              EmailPassword(controller: confirm, hintText: "Confirm Password", obscureText: true),

              // const SizedBox(height: 10),
              // const Text('Forgot Password :(',style: TextStyle(color: Colors.black)),

              const SizedBox(height: 25),
              SignUp(onTap: signUserIn),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child:Row(children: [
                  Expanded(child:Divider(thickness: 0.5,color: Colors.grey[400])),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child:Text('Or Continue With ',style: TextStyle(color: Colors.black))
                  ),
                  Expanded(child: Divider(thickness: 0.5,color: Colors.grey[400]))
                ],)

              ),

              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SqaureTile(imagePath:'lib/media/g.jpg'),

                  SizedBox(width:10),

                  SqaureTile(imagePath: 'lib/media/a.png')
              ],
              ),

              // const SizedBox(height:10),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text('Not a Member ? '),
              //     SizedBox(width:4),
              //     Text('Register Now ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
              // ],)
              const SizedBox(height: 20),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a User ? '),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the SignUpPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  LoginPage()),
                        );
                      },
                      child: const Text(
                        ' Login In ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
         ],
      ),
    )
    ),

        ],
      ),
    )
    ), 
    ) 
    );
  }
}
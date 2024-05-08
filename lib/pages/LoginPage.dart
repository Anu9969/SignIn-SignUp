// ignore_for_file: file_names

import 'package:app1/component/EmailPassword.dart';
import 'package:app1/component/SignInWith.dart';
import 'package:app1/component/SquareTile.dart';
import 'package:app1/pages/SignUpPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController passwordController=TextEditingController();
  final TextEditingController userName=TextEditingController();
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
              const Icon(Icons.lock,size:100),
      
              const SizedBox(height: 20),

              //welcome text
              const Text(
                "Hey Champ ! :), You've Been Missed ! ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
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
              EmailPassword(controller: userName, hintText: 'Enter Your Email', obscureText: false),

              //Password
              const SizedBox(height: 25),
              EmailPassword(controller: passwordController, hintText: "Enter Password", obscureText: true),

              const SizedBox(height: 10),
              const Text('Forgot Password :(',style: TextStyle(color: Colors.black)),

              const SizedBox(height: 25),
              SignInWith(onTap: signUserIn),

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
                    const Text('Not a Member ? '),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the SignUpPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SignUpPage()),
                        );
                      },
                      child: const Text(
                        'Register Now ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
               ],
        ),
      ),
              ),
        ],
      ),
    )
    ), 
    ) 
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutterproject/modal/login_modal.dart';
import 'package:flutterproject/pages/profile_page.dart';
import 'package:flutterproject/pages/signup_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Text('Welcome Back',style: TextStyle(fontSize: 25,

          ),),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           const SizedBox(height: 40,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                      textStyle: const TextStyle(
                          fontSize: 30
                      )

                  ),
                  onPressed: (){
                    login("eve.holt@reqres.in", "cityslicka");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
                  }, child: const Text('Login')

              ),
            ),
          const   SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(
                        fontSize: 30
                      )

                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
                    }, child: const Text('Sign Up'))),
            const   SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        textStyle: const TextStyle(
                            fontSize: 30
                        )

                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
                    }, child: const Text('Forgot Password')))
          ],
        ),
      ),
    );
  }
}
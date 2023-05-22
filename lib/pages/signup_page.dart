import 'package:flutter/material.dart';
import 'package:flutterproject/pages/forget_password_bottomsheet.dart';
import 'package:flutterproject/pages/profile_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
        child: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,


          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:const  [
                         Text('Welcome ,',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text('to sign ',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white70),),

                  ],

                ),
                const     Text(' In Continue',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white70),
                ),
              ],
            ),


            Row(
              children: [
                const SizedBox(width: 10,),
                Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade600.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40.0)
            ),
            ),
                  height: 80,
                  width: 180,

                ),
                Container(
                  height: 80,
                  width: 180,
                  color: Colors.blue.shade600,
                  child: const Text(

                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
fontWeight: FontWeight.bold

                  ),
                  ),
                )
              ],
            ),
            Column(

              children: [
                TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(

                      prefixIcon: Icon(Icons.phone_in_talk_rounded,color: Colors.white,),
                      labelText: 'Phone Number',labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                      contentPadding:  EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),

                      focusedBorder: UnderlineInputBorder(


                          borderSide: BorderSide(color: Colors.white))
                  ),
                ),
                const  SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(

                    prefixIcon: Icon(Icons.lock,color: Colors.white,),
                    labelText: 'Password',labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                    contentPadding:  EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  ),
                ),

              ],
            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 250,height: 80,

                              child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white
                                ),
                                onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade700,
                                    fontSize: 30
                                  ),
                                ),
                              ),),
const SizedBox(height: 10),
                            InkWell(
                              onTap: (){ ForgetPasswordScreen.buildShowModalBottomSheet(context);},
                              child:   const Text('Forgot your password ?',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                ),),
                            )

                          ],
                        ),
                                  ],
        ),
      ),
    );
  }
}

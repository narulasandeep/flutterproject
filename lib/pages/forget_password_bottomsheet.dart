import 'package:flutter/material.dart';
import 'package:flutterproject/pages/forget_password_button.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        builder: (context) =>
            Container(

              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const   Text('Make selection',
                    style: TextStyle(fontSize: 40),
                  ),
                  const   Text(" Select One Of The Two Options To Reset Via Mail or Phone Number ",
                      style: TextStyle(fontSize: 18)

                  ),
                  const SizedBox(height: 5,),
                  ForgetPasswordButton(
                    btnIcon: Icons.mail_outline_outlined,
                    onTap: () {},
                    title: "Email",
                    subTitle: 'Reset via Email',
                  ),
                  const SizedBox(height: 5,),
                  ForgetPasswordButton(
                    btnIcon: Icons.mobile_friendly_outlined,
                    onTap: ()
                    {},
                    title: 'phone num',
                    subTitle: 'Reset via phone',
                  ),
                ],
              ),
            ));
  }
}
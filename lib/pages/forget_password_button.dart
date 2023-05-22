import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
     this.onTap,
    required this.btnIcon, required this.subTitle, required this.title,
    super.key,

  });
  final IconData  btnIcon;
  final String title , subTitle;
  final VoidCallback ?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const  EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(btnIcon,size: 50.0,),
            const SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subTitle,style: const TextStyle(fontSize: 20),),
              ],
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/features/global/common/common.dart';

class HomeButtonWidget extends StatelessWidget {
  final String textData;
  final IconData iconData;
  final VoidCallback? onTap;
  const HomeButtonWidget({Key? key,required this.textData,this.onTap,required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 95,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: glowBoxShadow,
        ),
        child:
        Row(
          children: [
            Icon(iconData,size: 40,),
            SizedBox(width: 10,),
            Text(textData, style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

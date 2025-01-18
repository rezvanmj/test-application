import 'package:flutter/material.dart';

class CustomSpace extends StatelessWidget {
  const CustomSpace({this.height , this.width , super.key});
 final double? height ;
 final double? width ;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height ?? 0 ,
      width: width ?? 0 ,
    );
  }
}

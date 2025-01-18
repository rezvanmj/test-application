import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return _loading();
  }

  Widget _loading(){
    return Center(child: SizedBox(
        height: 12,
        width: 12,
        child: CircularProgressIndicator())) ;
  }
}

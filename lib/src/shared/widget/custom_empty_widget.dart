import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _emptyList(context);
  }
  Widget _emptyList(BuildContext context ) => Center(child: Text('لیست خالی است' , style: Theme.of(context).textTheme.bodyMedium,));

}

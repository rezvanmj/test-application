import 'package:flutter/material.dart';

import '../../../core/colors/custom_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _error(context);
  }
  Widget _error(BuildContext context ){
    return Center(child: Text('خطایی رخ داده است' , style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: CustomColors.errorColor),));
  }
}

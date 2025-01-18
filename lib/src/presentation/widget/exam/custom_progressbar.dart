import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:test_flutter_project/core/images/custom_images.dart';

class CustomProgressbar extends StatelessWidget {
   const CustomProgressbar({required this.totalValue , required this.value , super.key});


  final double totalValue ;
  final double value ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _background(context),
        CircularPercentIndicator(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          lineWidth: 6.0,
          percent: ((value / totalValue) * 100)/100,
          center:  _centerSvg(context),
          progressColor:  Theme.of(context).splashColor,
          progressBorderColor: Theme.of(context).splashColor,
        ),
      ],
    );
  }

  Widget _centerSvg(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).indicatorColor
            ),
            child: SvgPicture.asset(CustomImages.noteSvg));
  }

  Widget _background(BuildContext context) {
    return Container(
        height:80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).indicatorColor
        ),
      );
  }
}

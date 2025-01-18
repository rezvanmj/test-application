import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:test_flutter_project/core/colors/custom_colors.dart';

class Utils {


  static String convertToShamsi(DateTime dateTime ) {
    Jalali jalaliDate = Gregorian.fromDateTime(dateTime.toLocal()).toJalali();

    String formattedDate =
        '${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}' ;
    return formattedDate ;
  }

 static int calculateDuration(DateTime dateTime) {
    DateTime now = DateTime.now();

    Duration difference = dateTime.difference(now);

    if (difference.isNegative) {
      int daysAgo = difference.inDays.abs();
      return daysAgo;
    } else {
      int daysAhead = difference.inDays;
      return daysAhead;
    }
  }

  static int calculateDurationBetween(DateTime startDate , DateTime endDate ) {


    Duration difference = startDate.difference(endDate);

    if (difference.isNegative) {
      int daysAgo = difference.inDays.abs();
      return daysAgo;
    } else {
      int daysAhead = difference.inDays;
      return daysAhead;
    }
  }


  static Color setStatusColor(int timeDuration){
    if(timeDuration < 10 ){
      return CustomColors.errorColor ;

    }else if(timeDuration > 10 ){
      return CustomColors.warningColor ;
    }
    return CustomColors.blue ;
  }

}

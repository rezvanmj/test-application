import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:test_flutter_project/core/colors/custom_colors.dart';
import 'package:test_flutter_project/core/images/custom_images.dart';
import 'package:test_flutter_project/core/utils/utils.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/custom_progressbar.dart';
import 'package:test_flutter_project/src/shared/widget/custom_space.dart';

class ExamItem extends StatelessWidget {
  const ExamItem({required this.examItem, super.key});

  final ExamEntity examItem;

  @override
  Widget build(BuildContext context) {
    return _examCard(context);
  }

  Widget _examCard(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
    child: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: _cardDetail(context),
    ),
  );
  }

  Widget _cardDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          _examDurationAndStatus(context),
          CustomSpace(
            height: 8,
          ),
          _examDetail(context)
        ],
      ),
    );
  }

  Widget _examDetail(BuildContext context) {
    int durationStartTillNow = Utils.calculateDuration(DateTime.parse(examItem.startDate ?? DateTime.now().toString()));
    int durationStartTillEnd = 100;
   log('total : $durationStartTillEnd  val is : $durationStartTillNow' );

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomProgressbar(totalValue: durationStartTillEnd.toDouble(), value: durationStartTillNow.toDouble()),
        CustomSpace(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context),
            CustomSpace(height: 4,) ,
            _startEndTimes(context)
          ],
        )
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Text(
            'آزمون:  ${examItem.title}',
            style: Theme.of(context).textTheme.bodyLarge,
          );
  }

  Widget _startEndTimes(BuildContext context) {
    String startDateShamsi = Utils.convertToShamsi(DateTime.parse(examItem.startDate ?? DateTime.now.toString())) ;
    int durationTillNow = Utils.calculateDuration(DateTime.parse(examItem.endDate ?? DateTime.now.toString())) ;
    Color statusColor = Utils.setStatusColor(durationTillNow) ;
    return Row(
      children: [
        Text(
            'شروع: $startDateShamsi',
            style: Theme.of(context).textTheme.bodySmall),
        _divider(context),
        Text(
          ' پایان: $durationTillNow روز دیگر ',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: statusColor),
        )
      ],
    );
  }

  Widget _divider(BuildContext context) {
    return SizedBox(
        height: 14,
        child: VerticalDivider(color: Theme.of(context).indicatorColor));
  }

  Widget _examDurationAndStatus(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _examTime(context),
        _dot(),
      ],
    );
  }

  Widget _examTime(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).indicatorColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Row(
          children: [
            SvgPicture.asset(CustomImages.clockSvg),
            Text(
              ' زمان آزمون: ${examItem.duration}دقیفه',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }

  Widget _dot() {
    int durationTillNow = Utils.calculateDuration(DateTime.parse(examItem.endDate ?? DateTime.now.toString())) ;
    Color statusColor = Utils.setStatusColor(durationTillNow) ;
    return Container(
      height: 13,
      width: 13,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: statusColor),
    );
  }
}

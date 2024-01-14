import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:flutter_test_app/src/utils/helpers/helper.functions.dart';

import '../../../../constants/app.sizes.dart';

class TLoadingWidget extends StatelessWidget {
  final Medication medication;
  const TLoadingWidget({super.key, required this.medication});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: TAppSize.s190,
        margin: const EdgeInsets.symmetric(vertical: TAppSize.s8),
        padding: const EdgeInsets.all(TAppSize.s12),
        decoration: BoxDecoration(
          color: THelperFunction.isDarkMode(context)
              ? TAppColor.darkGrey
              : TAppColor.whiteColor,
          borderRadius: BorderRadius.circular(TAppSize.s10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Entresto, 100mg',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: TAppSize.s16),
                ),
                Text(
                  'Entresto, 100mg',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: TAppSize.s16),
                ),
              ],
            ),
            Text(
              '2/day',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: TAppSize.s14),
            ),
            //  TAppSize.s100.verticalSpace,
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  child: const Text(''),
                ),
                TAppSize.s16.horizontalSpace,
                CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  child: const Text(''),
                ),
                TAppSize.s16.horizontalSpace,
                CircleAvatar(
                  //  radius: TAppSize.s10,
                  backgroundColor: Colors.grey[500],
                  child: const Text(''),
                ),
              ],
            ),
          ],
        ));
  }
}

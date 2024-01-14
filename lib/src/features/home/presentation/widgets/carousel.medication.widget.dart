import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/gen/assets.gen.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:flutter_test_app/src/utils/helpers/helper.functions.dart';

import '../../../../constants/app.sizes.dart';

class TCarouselMedicationWidget extends StatelessWidget {
  final Medication medication;
  const TCarouselMedicationWidget({super.key, required this.medication});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: THelperFunction.isDarkMode(context)
          ? TAppColor.darkGrey
          : TAppColor.whiteColor,
      elevation: TAppSize.s2,
      child: Container(
          padding: const EdgeInsets.all(TAppSize.s8),
          decoration: BoxDecoration(
            color: THelperFunction.isDarkMode(context)
                ? TAppColor.darkGrey
                : TAppColor.whiteColor,
            borderRadius: BorderRadius.circular(TAppSize.s10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${medication.name}, ${medication.grams}',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: TAppSize.s16),
              ),
              Text(
                '${medication.dosage}/day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: TAppSize.s14),
              ),
              const Spacer(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: medication.morning ?? false
                        ? TAppColor.primary.withOpacity(TAppSize.s0_1)
                        : TAppColor.transparentColor,
                    child: Assets.icons.sunriseIcon.svg(
                      color: medication.morning!
                          ? TAppColor.primary
                          : THelperFunction.isDarkMode(context)
                              ? TAppColor.whiteColor
                              : TAppColor.blackColor,
                    ),
                  ),
                  TAppSize.s16.horizontalSpace,
                  CircleAvatar(
                    backgroundColor: medication.afternoon ?? false
                        ? TAppColor.primary.withOpacity(TAppSize.s0_1)
                        : TAppColor.transparentColor,
                    child: Assets.icons.sunIcon.svg(
                      color: medication.afternoon!
                          ? TAppColor.primary
                          : THelperFunction.isDarkMode(context)
                              ? TAppColor.whiteColor
                              : TAppColor.blackColor,
                    ),
                  ),
                  TAppSize.s16.horizontalSpace,
                  CircleAvatar(
                    backgroundColor: medication.evening ?? false
                        ? TAppColor.primary.withOpacity(TAppSize.s0_1)
                        : TAppColor.transparentColor,
                    child: Assets.icons.moonIcon.svg(
                      color: medication.evening ?? false
                          ? TAppColor.primary
                          : THelperFunction.isDarkMode(context)
                              ? TAppColor.whiteColor
                              : TAppColor.blackColor,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

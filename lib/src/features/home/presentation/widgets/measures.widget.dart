import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/utils/formatters/formatters.dart';
import 'package:flutter_test_app/src/utils/helpers/helper.functions.dart';
import 'package:intl/intl.dart';

import '../../../../constants/app.sizes.dart';

class TMeasuresWidget extends StatefulWidget {
  final MedicalTest test;
  const TMeasuresWidget({super.key, required this.test});

  @override
  State<TMeasuresWidget> createState() => _TMeasuresWidgetState();
}

class _TMeasuresWidgetState extends State<TMeasuresWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: THelperFunction.isDarkMode(context)
          ? TAppColor.darkGrey
          : TAppColor.whiteColor,
      elevation: TAppSize.s2,
      child: Container(
          //padding: const EdgeInsets.all(TAppSize.s8),
          decoration: BoxDecoration(
            color: THelperFunction.isDarkMode(context)
                ? TAppColor.darkGrey
                : TAppColor.whiteColor,
            borderRadius: BorderRadius.circular(TAppSize.s10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: TAppSize.s8, right: TAppSize.s10, left: TAppSize.s10),
                child: Text(
                  widget.test.lastResult != null
                      ? TFormatter.formatDate(
                          dateFormat: DateFormat.yMMMd(),
                          date: DateTime.parse(widget.test.testedAt ??
                              DateTime.now().toIso8601String()),
                        )
                      : TFormatter.convertToAgo(DateTime.parse(
                          widget.test.testedAt ??
                              DateTime.now().toIso8601String())),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: TAppSize.s14),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(
                    top: TAppSize.s2, right: TAppSize.s10, left: TAppSize.s10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.test.name ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: TAppSize.s14),
                    ),
                    Row(
                      children: [
                        widget.test.lastResult != null
                            ? Text(
                                '${widget.test.measure} pg/ml',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: TAppColor.red,
                                        fontSize: TAppSize.s14),
                              )
                            : const SizedBox.shrink(),
                        TAppSize.s8.horizontalSpace,
                        Container(
                          padding: const EdgeInsets.only(
                              left: TAppSize.s7,
                              right: TAppSize.s7,
                              top: TAppSize.s2,
                              bottom: TAppSize.s2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(TAppSize.s32),
                            color: widget.test.status == 'Good'
                                ? TAppColor.green.withOpacity(TAppSize.s0_1)
                                : TAppColor.red.withOpacity(TAppSize.s0_1),
                          ),
                          child: Text(
                            widget.test.status == 'Good' ? 'Good' : 'Off Track',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: widget.test.status == 'Good'
                                        ? TAppColor.green
                                        : TAppColor.red,
                                    fontSize: TAppSize.s12),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              // RangeSlider(
              //     min: 0,
              //     max: 1500,
              //     values: const RangeValues(200, 1100),
              //     onChanged: (val) {},),
              // progress radar
              widget.test.lastResult != null
                  ? SizedBox(
                      width: double.maxFinite,
                      child: Slider(
                        min: 0,
                        max: 1500,
                        label:
                            '${double.parse('${widget.test.measure}').toInt()} pg/ml',
                        value: double.parse('${widget.test.measure}'),
                        onChanged: (val) {
                          setState(() {
                            widget.test.measure = val.toInt();
                          });
                        },
                      ))
                  : const SizedBox.shrink(),
              widget.test.lastResult != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                          right: TAppSize.s10, left: TAppSize.s10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            //double.parse('${test.measure}').toInt().toString(),
                            '200',
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: THelperFunction.isDarkMode(context)
                                          ? TAppColor.text50
                                          : TAppColor.text700,
                                    ),
                          ),
                          Text(
                            '1100',
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: THelperFunction.isDarkMode(context)
                                          ? TAppColor.text50
                                          : TAppColor.text700,
                                    ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                        right: TAppSize.s10,
                        left: TAppSize.s10,
                        bottom: TAppSize.s10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Health rate reading
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '92',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: TAppSize.s22),
                              ),
                              TAppSize.s4.horizontalSpace,
                              Text(
                                'BPM',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: TAppSize.s12,
                                        color: TAppColor.greyColor),
                              ),
                            ],
                          ),
                          // test organisation
                          Row(
                            children: [
                              const Icon(Icons.male,
                                  size: TAppSize.s12,
                                  color: TAppColor.greyColor),
                              TAppSize.s4.horizontalSpace,
                              Text(
                                widget.test.organisation ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: TAppSize.s12,
                                        color: TAppColor.greyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              widget.test.lastResult != null
                  ? Padding(
                      padding: const EdgeInsets.all(TAppSize.s10),
                      child: Text(
                        'Last test result: ${widget.test.lastResult?.measure} pg/ml (${TFormatter.convertToAgo(DateTime.parse(widget.test.lastResult!.testedAt!))})',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: TAppSize.s13),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )),
    );
  }
}

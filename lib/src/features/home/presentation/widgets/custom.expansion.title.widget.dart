import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/src/common.widgets/animated.column.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/circle.icon.widget.dart';
import 'package:flutter_test_app/src/utils/formatters/formatters.dart';
import 'package:flutter_test_app/src/utils/helpers/helper.functions.dart';
import 'package:intl/intl.dart';

class TCustomExpansionTitleWidget extends StatefulWidget {
  final String title;
  final Appointment? appointment;
  bool expanded;
  final Widget icon;
  final Color color;
  TCustomExpansionTitleWidget(
      {super.key,
      this.expanded = false,
      required this.title,
      required this.icon,
      required this.color,
      this.appointment});

  @override
  State<TCustomExpansionTitleWidget> createState() =>
      _TCustomExpansionTitleWidgetState();
}

class _TCustomExpansionTitleWidgetState
    extends State<TCustomExpansionTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: THelperFunction.isDarkMode(context)
          ? TAppColor.darkGrey
          : TAppColor.whiteColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TAppSize.s12)),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(
            horizontal: TAppSize.s10, vertical: TAppSize.s6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TAppSize.s12)),
        backgroundColor: THelperFunction.isDarkMode(context)
            ? TAppColor.darkGrey
            : TAppColor.whiteColor,
        collapsedBackgroundColor: THelperFunction.isDarkMode(context)
            ? TAppColor.darkGrey
            : TAppColor.whiteColor,
        initiallyExpanded: widget.expanded,
        onExpansionChanged: (val) {
          setState(() {
            widget.expanded = val;
          });
        },
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TCircleIconWidget(
              color: widget.color,
              size: TAppSize.s40,
              padding: TAppSize.s8,
              radius: TAppSize.s8,
              child: widget.icon,
            ),
            TAppSize.s8.horizontalSpace,
            Text(
              widget.appointment?.name ?? '',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        trailing: SizedBox(
          width: TAppSize.s53,
          child: Row(
            children: [
              CircleAvatar(
                radius: TAppSize.s12,
                backgroundColor: widget.color,
                child: Text(
                  '${widget.appointment?.occurrence}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: TAppSize.s12, color: TAppColor.whiteColor),
                ),
              ),
              TAppSize.s4.horizontalSpace,
              Icon(
                widget.expanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: TAppColor.greyColor,
              )
            ],
          ),
        ),
        children: [dropDownContent()],
      ),
    );
  }

  Widget dropDownContent() {
    return AnimatedColumnWidget(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: TAppSize.s8),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TAppSize.s14, vertical: TAppSize.s8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your visit to ${widget.appointment?.appointmentType?.healthProfessional} is coming soon',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TAppSize.s10.verticalSpace,
              RichText(
                text: TextSpan(
                    text: 'Visited at ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: TFormatter.formatDate(
                            dateFormat: DateFormat.yMMMd(),
                            date: DateTime.parse(widget
                                    .appointment?.appointmentType!.visitedAt ??
                                DateTime.now().toIso8601String())),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: TAppSize.s14),
                      )
                    ]),
              ),
              TAppSize.s10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '${widget.appointment?.appointmentType?.healthProfessional}',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              TAppSize.s10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Visit Type',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fast_forward_outlined,
                        color: TAppColor.greyColor,
                      ),
                      TAppSize.s4.horizontalSpace,
                      Text(
                        '${widget.appointment?.appointmentType?.visiteType}',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              TAppSize.s12.verticalSpace,
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'View Details',
                  textAlign: TextAlign.start,
                ),
              ),
              TAppSize.s12.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}

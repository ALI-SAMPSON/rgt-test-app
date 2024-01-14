import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/gen/assets.gen.dart';
import 'package:flutter_test_app/src/common.widgets/animated.column.dart';
import 'package:flutter_test_app/src/common.widgets/animated.listview.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.enums.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:flutter_test_app/src/features/home/presentation/view.models/home.vm.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/carousel.medication.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/circle.icon.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/custom.carousel.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/custom.expansion.title.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/loading.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/measures.widget.dart';
import 'package:flutter_test_app/src/features/home/presentation/widgets/pie.chart.dart';
import 'package:flutter_test_app/src/utils/helpers/base.view.dart';
import 'package:flutter_test_app/src/utils/helpers/extension.functions.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test_app/src/utils/helpers/helper.functions.dart';
import 'package:redacted/redacted.dart';

class THomeView extends StatelessWidget {
  const THomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: TAppColor.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TAppSize.s100)),
        onPressed: () {},
        child: Assets.icons.dashboard.svg(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: THelperFunction.isDarkMode(context)
            ? TAppColor.darkGrey
            : TAppColor.whiteColor,
        elevation: TAppSize.s0,
        height: kBottomNavigationBarHeight,
      ),
      body: BaseView<THomeVm>(
          onModelReady: (vm) async {
            await vm.getUpcomingAppointments();
            await vm.getCurrentAppointments();
            await vm.getAllMedicalTests();
            await vm.getAllMedications();
          },
          onModelDispose: (vm) {},
          builder: (context, vm, child) {
            return SafeArea(
              child: Column(
                children: [
                  TAppSize.s10.verticalSpace,
                  // Custom App Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${AppLocalizations.of(context)!.hello} Shmuel',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      badges.Badge(
                          badgeStyle: const badges.BadgeStyle(
                              // padding: EdgeInsets.all(4.0),
                              badgeColor: TAppColor.green),
                          child: Assets.icons.notificationIcon.svg())
                    ],
                  ),

                  //TLoadingWidget(medication: medications[0]),

                  vm.upcomingAppointmentState.state == ModelState.loading
                      // ? const Expanded(
                      //     child: Center(
                      //       child: CircularProgressIndicator(),
                      //     ),
                      //   )
                      // :
                      ? Expanded(
                          child: AnimatedListView<Medication>(
                            // controller: vm.scrollController,
                            // shrinkWrap: true,
                            child: (appointment, index) {
                              return TLoadingWidget(medication: appointment)
                                  .redacted(context: context, redact: true);
                            },
                            items: vm.medicationState.data ?? medications,
                          ),
                        )
                      : Expanded(
                          child: AnimatedColumnWidget(
                            animateType: AnimateType.slideLeft,
                            children: [
                              TAppSize.s26.verticalSpace,
                              // top navigation buttons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  badges.Badge(
                                    badgeContent: Text(
                                      vm.currentAppointmentState.data == null
                                          ? '2'
                                          : '${vm.currentAppointmentState.data?.length}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: TAppColor.whiteColor),
                                    ),
                                    badgeStyle: const badges.BadgeStyle(
                                      badgeColor: TAppColor.red,
                                      padding: EdgeInsets.all(TAppSize.s7),
                                      borderSide: BorderSide(
                                          color: TAppColor.whiteColor,
                                          width: TAppSize.s2),
                                    ),
                                    position: badges.BadgePosition.topEnd(
                                        top: -8, end: -4),
                                    showBadge: true,
                                    onTap: () {},
                                    child: TCircleIconWidget(
                                      color: TAppColor.seablue,
                                      label:
                                          AppLocalizations.of(context)!.visits,
                                      child: Assets.icons.visitIcon.svg(),
                                    ),
                                  ),
                                  badges.Badge(
                                    badgeContent: Text(
                                      '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: TAppColor.whiteColor),
                                    ),
                                    badgeStyle: const badges.BadgeStyle(
                                      badgeColor: TAppColor.transparentColor,
                                      // padding: EdgeInsets.all(TAppSize.s7),
                                      borderSide: BorderSide(
                                          color: TAppColor.transparentColor,
                                          width: TAppSize.s2),
                                    ),
                                    position: badges.BadgePosition.topEnd(
                                        top: -8, end: 0),
                                    showBadge: true,
                                    onTap: () {},
                                    child: TCircleIconWidget(
                                      color: TAppColor.blue,
                                      label: AppLocalizations.of(context)!
                                          .medications,
                                      child: Assets.icons.medicationIcon.svg(),
                                    ),
                                  ),
                                  badges.Badge(
                                    badgeContent: Text(
                                      '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: TAppColor.whiteColor),
                                    ),
                                    badgeStyle: const badges.BadgeStyle(
                                      badgeColor: TAppColor.transparentColor,
                                      padding: EdgeInsets.all(TAppSize.s7),
                                      borderSide: BorderSide(
                                          color: TAppColor.transparentColor,
                                          width: TAppSize.s2),
                                    ),
                                    position: badges.BadgePosition.topEnd(
                                        top: -8, end: -4),
                                    showBadge: true,
                                    onTap: () {},
                                    child: TCircleIconWidget(
                                      color: TAppColor.yellow,
                                      label: AppLocalizations.of(context)!
                                          .vaccinations,
                                      child: Assets.icons.vaccinationIcon.svg(),
                                    ),
                                  ),
                                ],
                              ),
                              TAppSize.s32.verticalSpace,
                              PieChartItem(
                                title: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text:
                                            '${AppLocalizations.of(context)!.upcoming}\n',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                        children: [
                                          TextSpan(
                                            text:
                                                '${vm.upcomingAppointmentState.data?.length} Activities',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ])),
                                centerSpaceRadius: TAppSize.s110,
                                chartData: vm.upcomingAppointmentState.data!,
                                numOfSections:
                                    vm.upcomingAppointmentState.data!.length,
                              ),
                              TAppSize.s32.verticalSpace,
                              AnimatedListView(
                                items: vm.upcomingAppointmentState.data ?? [],
                                shrinkWrap: true,
                                child: (appointment, index) =>
                                    TCustomExpansionTitleWidget(
                                  title: AppLocalizations.of(context)!
                                      .futureVisits,
                                  appointment: appointment,
                                  icon: index == 1
                                      ? Assets.icons.vaccinationIcon.svg()
                                      : index == 2
                                          ? Assets.icons.labIcon.svg()
                                          : index == 3
                                              ? Assets.icons.scanIcon.svg()
                                              : index == 4
                                                  ? Assets.icons.surgeriesIcon
                                                      .svg()
                                                  : Assets.icons.visitIcon
                                                      .svg(),
                                  color: index == 1
                                      ? TAppColor.yellow
                                      : index == 2
                                          ? TAppColor.roseRed
                                          : index == 3
                                              ? TAppColor.indigo
                                              : index == 4
                                                  ? TAppColor.pink
                                                  : TAppColor.seablue,
                                ),
                              ),

                              // toggle cards
                              // TCustomExpansionTitleWidget(
                              //   title: AppLocalizations.of(context)!.futureVisits,
                              //   icon: Assets.icons.visitIcon.svg(),
                              //   color: TAppColor.seablue,
                              // ),
                              // TCustomExpansionTitleWidget(
                              //   title: AppLocalizations.of(context)!.futureVaccinations,
                              //   icon: Assets.icons.vaccinationIcon.svg(),
                              //   color: TAppColor.yellow,
                              // ),
                              // TCustomExpansionTitleWidget(
                              //   title: AppLocalizations.of(context)!.futureLabTests,
                              //   icon: Assets.icons.labIcon.svg(),
                              //   color: TAppColor.roseRed,
                              // ),
                              // TCustomExpansionTitleWidget(
                              //   title: AppLocalizations.of(context)!.futureScans,
                              //   icon: Assets.icons.scanIcon.svg(),
                              //   color: TAppColor.indigo,
                              // ),
                              // TCustomExpansionTitleWidget(
                              //   title: AppLocalizations.of(context)!.surgeries,
                              //   icon: Assets.icons.surgeriesIcon.svg(),
                              //   color: TAppColor.pink,
                              // ),
                              TAppSize.s32.verticalSpace,
                              // Active medications
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .activeMedications,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(fontSize: TAppSize.s16),
                                ),
                              ),
                              TAppSize.s8.verticalSpace,
                              CustomCarouselWidget<Medication>(
                                currentPageIndex: vm.currentIndex,
                                onPageChanged: vm.onPageChanged,
                                items: vm.medicationState.data ?? [],
                                height: TAppSize.s200,
                                carouselController: vm.carouselController,
                                child: (item) =>
                                    TCarouselMedicationWidget(medication: item),
                              ),

                              TAppSize.s32.verticalSpace,
                              // Tracking Measures section

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!
                                        .trackingMeasures,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontSize: TAppSize.s16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.seeAll} 15',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(fontSize: TAppSize.s14),
                                      ),
                                      //TAppSize.s4.horizontalSpace,
                                      const Icon(
                                        Icons.keyboard_arrow_right,
                                        color: TAppColor.greyColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              TAppSize.s8.verticalSpace,
                              CustomCarouselWidget<MedicalTest>(
                                currentPageIndex: vm.currentTestPageIndex,
                                onPageChanged: vm.onTestPageChanged,
                                items: vm.medicalTestState.data ?? [],
                                height: TAppSize.s200,
                                carouselController: vm.carouselController,
                                child: (test) => TMeasuresWidget(test: test),
                              ),

                              TAppSize.s22.verticalSpace,
                            ],
                          ).scrollable(),
                        ),
                ],
              ).horizontal(TAppSize.s20),
            );
          }),
    );
  }
}

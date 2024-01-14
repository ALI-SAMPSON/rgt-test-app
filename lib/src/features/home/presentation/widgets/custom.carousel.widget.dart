import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';

class CustomCarouselWidget<T> extends StatelessWidget {
  final CarouselController carouselController;
  final int currentPageIndex;
  final List<T> items;
  final double aspectRatio;
  final double height;
  final Widget Function(T item) child;
  final Function(int, CarouselPageChangedReason)? onPageChanged;
  const CustomCarouselWidget({
    super.key,
    required this.carouselController,
    required this.items,
    required this.currentPageIndex,
    required this.child,
    this.onPageChanged,
    this.aspectRatio = 16 / 9,
    this.height = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: height,
            onPageChanged: onPageChanged,
            aspectRatio: aspectRatio,
            viewportFraction: 0.85,
            //enableInfiniteScroll: false,
          ),
          items: items.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return child(item);
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: TAppSize.s8,
                height: TAppSize.s8,
                margin: const EdgeInsets.symmetric(
                    vertical: TAppSize.s8, horizontal: TAppSize.s8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPageIndex == entry.key
                      ? TAppColor.primary
                      : Colors.grey[300],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

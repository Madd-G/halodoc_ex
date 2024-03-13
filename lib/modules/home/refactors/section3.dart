import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/utils/utils.dart';
import 'package:halodoc_ex/modules/home/controller.dart';

class Section3 extends GetView<HomeController> {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      constraints: const BoxConstraints(maxWidth: 1200.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Penawaran Menarik',
              style: Responsive.isLaptop(context)
                  ? CustomTextStyle.text2ExtraLargeSemiBold
                  : CustomTextStyle.textLargeSemiBold),
          const SizedBox(height: 25.0),
          Responsive.isLaptop(context) ||
                  Responsive.isLaptopL(context) ||
                  Responsive.isTablet(context)
              ? const AppPageViewLaptop()
              : const AppPageViewPhone(),
          const SizedBox(height: 25.0),
          const PageIndicator(),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

class AppPageViewPhone extends GetView<HomeController> {
  const AppPageViewPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isMobileS(context)?  100.0 : 140.0,
      child: PageView.builder(
        onPageChanged: (index) {
          controller.currentPageNotifier.value = index;
        },
        scrollDirection: Axis.horizontal,
        controller: controller.pageControllerPhone,
        itemBuilder: (context, index) {
          Widget widget =
              controller.state.banners[index % controller.state.banners.length];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: widget,
          );
        },
      ),
    );
  }
}

class AppPageViewLaptop extends GetView<HomeController> {
  const AppPageViewLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isLaptopL(context)
          ? 200.0
          : Responsive.isLaptop(context)
              ? 180.0
              : Responsive.isTablet(context)
                  ? 120.0
                  : 60,
      child: PageView.builder(
        onPageChanged: (index) {
          controller.currentPageNotifier.value = index;
        },
        scrollDirection: Axis.horizontal,
        controller: controller.pageControllerLaptop,
        itemBuilder: (context, index) {
          Widget widget =
              controller.state.banners[index % controller.state.banners.length];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: widget,
          );
        },
      ),
    );
  }
}

class PageIndicator extends GetView<HomeController> {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: controller.currentPageNotifier,
      builder: (context, currentPage, _) {
        int firstVisibleIndex = currentPage % controller.state.banners.length;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              controller.state.banners.length,
              (index) => Container(
                width: 9.0,
                height: 9.0,
                margin: const EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == firstVisibleIndex
                      ? Colors.black
                      : const Color(0xFFBBBBBB),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

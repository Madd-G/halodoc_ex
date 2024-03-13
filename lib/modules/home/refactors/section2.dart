import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/utils/utils.dart';
import 'package:halodoc_ex/modules/home/controller.dart';

class Section2 extends GetView<HomeController> {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isLaptopL(context)
        ? const Section2LaptopL()
        : const Section2LaptopLTabletMobile();
  }
}

class Section2LaptopLTabletMobile extends GetView<HomeController> {
  const Section2LaptopLTabletMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      constraints: const BoxConstraints(maxWidth: 1200.0),
      height: 330.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 165.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Layanan Khusus',
                      style: Responsive.isLaptop(context)
                          ? CustomTextStyle.text2ExtraLargeSemiBold
                          : CustomTextStyle.textLargeSemiBold),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 120.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.state.specialServices.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: Responsive.isLaptop(context)
                                ? const EdgeInsets.symmetric(horizontal: 20.0)
                                : const EdgeInsets.symmetric(horizontal: 10.0),
                            child: controller.state.specialServices[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 165.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Penunjang Kesehatan',
                      style: Responsive.isLaptop(context)
                          ? CustomTextStyle.text2ExtraLargeSemiBold
                          : CustomTextStyle.textLargeSemiBold),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 120.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.state.healthSupport.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: Responsive.isLaptop(context)
                                ? const EdgeInsets.symmetric(horizontal: 20.0)
                                : const EdgeInsets.symmetric(horizontal: 10.0),
                            child: controller.state.healthSupport[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Section2LaptopL extends GetView<HomeController> {
  const Section2LaptopL({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200.0),
      height: 360.0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 600.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Layanan Khusus',
                      style: CustomTextStyle.text2ExtraLargeSemiBold),
                  const SizedBox(height: 30.0),
                  Wrap(
                    spacing: 25.0,
                    runSpacing: 15.0,
                    children: controller.state.specialServices.map((item) {
                      return item;
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 600.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Penunjang Kesehatan',
                      style: CustomTextStyle.text2ExtraLargeSemiBold),
                  const SizedBox(height: 30.0),
                  Wrap(
                    spacing: 40.0,
                    runSpacing: 20.0,
                    children: controller.state.healthSupport.map((item) {
                      return item;
                    }).toList(),
                  ),
                  const SizedBox(height: 45.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

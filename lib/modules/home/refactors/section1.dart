import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/utils/utils.dart';
import 'package:halodoc_ex/modules/home/controller.dart';

class Section1 extends GetView<HomeController> {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return (Responsive.isLaptopL(context))
        ? const Section1LaptopL()
        : Responsive.isLaptop(context) || Responsive.isTablet(context)
            ? const Section1LaptopTablet()
            : const Section1Phone();
  }
}

class Section1Phone extends GetView<HomeController> {
  const Section1Phone({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: size.width,
      height: size.width <= 330 ? 410.0 : 370.0,
      color: const Color(0XFFF5F8FC),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25.0),
              const Text('Solusi Kesehatan Terlengkap',
                  style: CustomTextStyle.text2ExtraLargeSemiBold),
              const Text(
                'Chat dokter, kunjungi rumah sakit, beli obat, cek lab dan update informasi seputar kesehatan, semua bisa di Halodoc!',
                style: CustomTextStyle.textRegular,
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 120.0,
                // width: 110.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.state.solutions.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          height: 120.0,
                          width: 110.0,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFCCDBEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                              ),
                              Text(
                                controller.state.solutions[index],
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.textRegularSemiBold,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15.0),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 80.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF18B3E4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        SizedBox(
                          width: Responsive.isMobileS(context) ||
                                  Responsive.isMobileM(context)
                              ? 215.0
                              : 240.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sambungkan Asuransimu',
                                style: CustomTextStyle.textSmallSemiBold,
                              ),
                              Text(
                                'Dapatkan manfaat asuransi secara langsung untuk layanan Halodoc.',
                                style: Responsive.isMobileM(context) ||
                                        Responsive.isMobileS(context)
                                    ? CustomTextStyle.textExtraSmallRegular
                                    : CustomTextStyle.textSmallRegular,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Icon(CupertinoIcons.forward)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Section1LaptopTablet extends GetView<HomeController> {
  const Section1LaptopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: size.width,
      height: size.width < 460 ? 440.0 : 380.0,
      color: const Color(0XFFF5F8FC),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25.0),
              Text('Solusi Kesehatan Terlengkap',
                  style: CustomTextStyle.text3ExtraLargeSemiBold
                      .copyWith(fontSize: 34.0)),
              const Text(
                'Chat dokter, kunjungi rumah sakit, beli obat, cek lab dan update informasi seputar kesehatan, semua bisa di Halodoc!',
                style: CustomTextStyle.textLargeRegular,
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 120.0,
                // width: 110.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.state.solutions.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          height: 120.0,
                          width: 110.0,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFCCDBEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                              ),
                              Text(
                                controller.state.solutions[index],
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.textRegularSemiBold,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15.0),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 90.0,
                width: 400.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF18B3E4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        const SizedBox(
                          width: 250.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sambungkan Asuransimu',
                                style: CustomTextStyle.textLargeSemiBold,
                              ),
                              Text(
                                'Dapatkan manfaat asuransi secara langsung untuk layanan Halodoc.',
                                style: CustomTextStyle.textSmallRegular,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Icon(CupertinoIcons.forward)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Section1LaptopL extends GetView<HomeController> {
  const Section1LaptopL({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.0,
      color: const Color(0XFFF5F8FC),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 65.0),
              Text('Solusi Kesehatan Terlengkap',
                  style: CustomTextStyle.text3ExtraLargeSemiBold
                      .copyWith(fontSize: 34.0)),
              const SizedBox(
                width: 600.0,
                child: Text(
                  'Chat dokter, kunjungi rumah sakit, beli obat, cek lab dan update informasi seputar kesehatan, semua bisa di Halodoc!',
                  style: CustomTextStyle.textLargeRegular,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  controller.state.solutions.length,
                  (index) => Row(
                    children: [
                      Container(
                        height: 125.0,
                        width: 190.0,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70.0,
                              width: 70.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFCCDBEF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                              ),
                            ),
                            Text(
                              controller.state.solutions[index],
                              style: CustomTextStyle.textRegularSemiBold,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 90.0,
                width: 400.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF18B3E4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        const SizedBox(
                          width: 250.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sambungkan Asuransimu',
                                style: CustomTextStyle.textLargeSemiBold,
                              ),
                              Text(
                                'Dapatkan manfaat asuransi secara langsung untuk layanan Halodoc.',
                                style: CustomTextStyle.textSmallRegular,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Icon(CupertinoIcons.forward)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

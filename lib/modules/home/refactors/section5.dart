import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/utils/utils.dart';
import 'package:halodoc_ex/modules/home/index.dart';

class Section5 extends GetView<HomeController> {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width > 1185)
        ? const Section5Laptop()
        : Responsive.isTablet(context) || Responsive.isMobileL(context) || MediaQuery.of(context).size.width < 1185
            ? const Section5TabletPhoneL()
            : const Section5Small();
  }
}

class Section5Small extends GetView<HomeController> {
  const Section5Small({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 400.0,
      constraints: const BoxConstraints(maxWidth: 1200.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Obat & Vitamin',
            style: CustomTextStyle.text2ExtraLargeSemiBold,
          ),
          const Text(
              'Dapatkan informasi seputar kandungan, aturan, petunjuk penggunaan obat dan vitamin di sini'),
          const SizedBox(height: 20.0),
          const MedicineAndVitaminCard(text: 'Kesehatan Seksual'),
          const SizedBox(height: 20.0),
          const MedicineAndVitaminCard(text: 'Saluran Pencernaan'),
          const SizedBox(height: 20.0),
          const MedicineAndVitaminCard(text: 'Asma'),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(
              height: 65.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(color: Colors.grey)),
              child: SizedBox(
                child: Center(
                  child: Text(
                    'LIHAT SEMUA',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.textRegularBold
                        .copyWith(color: Colors.pink),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 45.0),
        ],
      ),
    );
  }
}

class Section5TabletPhoneL extends GetView<HomeController> {
  const Section5TabletPhoneL({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      constraints: const BoxConstraints(maxWidth: 1200.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Obat & Vitamin',
            style: CustomTextStyle.text2ExtraLargeSemiBold,
          ),
          const Text(
              'Dapatkan informasi seputar kandungan, aturan, petunjuk penggunaan obat dan vitamin di sini'),
          const SizedBox(height: 20.0),
          const Row(
            children: [
              MedicineAndVitaminCard(text: 'Kesehatan Seksual'),
              SizedBox(width: 10.0),
              MedicineAndVitaminCard(text: 'Saluran Pencernaan'),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const MedicineAndVitaminCard(text: 'Asma'),
              const SizedBox(width: 10.0),
              Expanded(
                child: Container(
                  height: 65.0,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      border: Border.all(color: Colors.grey)),
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        'LIHAT SEMUA',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.textRegularBold
                            .copyWith(color: Colors.pink),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35.0),
        ],
      ),
    );
  }
}

class Section5Laptop extends GetView<HomeController> {
  const Section5Laptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      constraints: const BoxConstraints(maxWidth: 1200.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Obat & Vitamin',
            style: CustomTextStyle.text2ExtraLargeSemiBold,
          ),
          const Text(
              'Dapatkan informasi seputar kandungan, aturan, petunjuk penggunaan obat dan vitamin di sini'),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (index) => Container(
                height: 65.0,
                width: 380.0,
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10.0),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFCCDBEF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      child: Text(
                        controller.state.categories[index],
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.textRegularBold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 45.0,
            width: 380.0,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: Colors.grey)),
            child: SizedBox(
              child: Center(
                child: Text(
                  'LIHAT SEMUA',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textLargeBold
                      .copyWith(color: Colors.pink),
                ),
              ),
            ),
          ),
          const SizedBox(height: 45.0)
        ],
      ),
    );
  }
}

class MedicineAndVitaminCard extends StatelessWidget {
  const MedicineAndVitaminCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 65.0,
        // width: 380.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10.0),
            Container(
              height: 50.0,
              width: 50.0,
              decoration: const BoxDecoration(
                color: Color(0xFFCCDBEF),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                  style: CustomTextStyle.textRegularBold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


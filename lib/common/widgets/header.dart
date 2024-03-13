import 'package:flutter/material.dart';
import 'package:halodoc_ex/common/utils/custom_text_style.dart';
import 'package:halodoc_ex/common/utils/responsive.dart';
import 'package:halodoc_ex/modules/home/widgets/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.currentWidth});

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return (Responsive.isLaptop(context) || Responsive.isLaptopL(context))
        ? HeaderLaptopSize(currentWidth: currentWidth)
        : HeaderTabletPhoneSize(currentWidth: currentWidth);
  }
}

class HeaderTabletPhoneSize extends StatelessWidget {
  const HeaderTabletPhoneSize({super.key, required this.currentWidth});

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.menu),
              Image.asset('assets/images/halodoc-logo.png',
                  width: 200.0, height: 100.0, fit: BoxFit.cover),
              Text('Width: $currentWidth',
                  style: CustomTextStyle.textExtraLargeRegular),
            ],
          ),
        ),
        const LoginButton(),
      ],
    );
  }
}

class HeaderLaptopSize extends StatelessWidget {
  const HeaderLaptopSize({super.key, required this.currentWidth});

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/halodoc-logo.png',
                width: 250.0, height: 100.0, fit: BoxFit.cover),
            const Text('Beranda', style: CustomTextStyle.textExtraLargeRegular),
            const SizedBox(width: 30.0),
            const Text('Artikel', style: CustomTextStyle.textExtraLargeRegular),
            const SizedBox(width: 30.0),
            const Text('Aplikasi',
                style: CustomTextStyle.textExtraLargeRegular),
            const SizedBox(width: 30.0),
            const Text('Riwayat', style: CustomTextStyle.textExtraLargeRegular),
            const SizedBox(width: 30.0),
            Text('Width: $currentWidth',
                style: CustomTextStyle.textExtraLargeRegular),
          ],
        ),
        const LoginButton(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobileS;
  final Widget mobileM;
  final Widget mobileL;
  final Widget? tablet;
  final Widget laptop;
  final Widget laptopL;

  const Responsive({
    super.key,
    required this.mobileS,
    required this.mobileM,
    required this.mobileL,
    this.tablet,
    required this.laptop,
    required this.laptopL,
  });

  static bool isMobileS(BuildContext context) =>
      MediaQuery.of(context).size.width <= 320.0;

  static bool isMobileM(BuildContext context) =>
      MediaQuery.of(context).size.width <= 375.0 &&
      MediaQuery.of(context).size.width > 320.0;

  static bool isMobileL(BuildContext context) =>
      MediaQuery.of(context).size.width <= 425.0 &&
      MediaQuery.of(context).size.width > 375.0;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1024.0 &&
      MediaQuery.of(context).size.width > 425.0;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1440.0 &&
      MediaQuery.of(context).size.width > 1024.0;

  static bool isLaptopL(BuildContext context) =>
      MediaQuery.of(context).size.width > 1440.0;

  @override
  Widget build(BuildContext context) {
    if (isLaptopL(context)) {
      return laptopL;
    } else if (isLaptop(context)) {
      return laptop;
    } else if (isTablet(context)) {
      return tablet!;
    } else if (isMobileL(context)) {
      return mobileL;
    } else if (isMobileM(context)) {
      return mobileM;
    } else if (isMobileS(context)) {
      return mobileS;
    } else {
      return laptopL;
    }
  }
}

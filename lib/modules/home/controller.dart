import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/modules/home/index.dart';

class HomeController extends GetxController {
  HomeController();

  final HomeState state = HomeState();
  late PageController pageControllerLaptop;
  late PageController pageControllerPhone;
  final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);
  late Timer _timer;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final loginFormKey = GlobalKey<FormState>();
  final RxBool isObscure = true.obs;

  @override
  void onInit() {
    super.onInit();
    pageControllerLaptop = PageController(
      initialPage: 1,
      viewportFraction: 400.0 / 1200.0,
    );

    pageControllerLaptop.addListener(() {
      int next = pageControllerLaptop.page!.round();
      if (currentPageNotifier.value != next) {
        currentPageNotifier.value = next;
      }
    });

    pageControllerPhone = PageController(
      initialPage: 1,
      viewportFraction: 1000.0 / 1200.0,
    );

    pageControllerPhone.addListener(() {
      int next = pageControllerPhone.page!.round();
      if (currentPageNotifier.value != next) {
        currentPageNotifier.value = next;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeTimer();
    });

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void _initializeTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (pageControllerLaptop.hasClients) {
        int nextPage = (currentPageNotifier.value + 1) % 20;
        pageControllerLaptop.animateToPage(
          nextPage,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
        );
      }

      if (pageControllerPhone.hasClients) {
        int nextPage = (currentPageNotifier.value + 1) % 20;
        pageControllerPhone.animateToPage(
          nextPage,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void obscureText() {
    isObscure.value = !isObscure.value;
  }

  @override
  void onClose() {
    _timer.cancel();
    pageControllerLaptop.dispose();
    currentPageNotifier.dispose();
    super.onClose();
  }
}

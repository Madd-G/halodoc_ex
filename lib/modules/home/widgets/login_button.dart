import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/utils/utils.dart';
import 'package:halodoc_ex/common/widgets/custom_text_field.dart';
import 'package:halodoc_ex/common/widgets/rounded_container.dart';
import 'package:halodoc_ex/modules/home/controller.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () => showLoginDialog(context),
        child: Container(
          height: 32.0,
          decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'login',
                style: CustomTextStyle.textLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showLoginDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        title: Title(),
        content: ContentDialog(),
      ),
    );
  }
}

class ContentDialog extends GetView<HomeController> {
  const ContentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          constraints: const BoxConstraints(maxWidth: 1500.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DialogTitle(),
              SizedBox(height: 20.0),
              LoginForm(),
              SizedBox(height: 20.0),
              CautionText(),
              SizedBox(height: 20.0),
              SendCodeButton()
            ],
          ),
        ),
      ],
    );
  }
}

class LoginForm extends GetView<HomeController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          CustomTextField(
            prefixIcon: const Icon(Icons.email),
            controller: controller.emailController,
            hintText: 'Masukkan email',
            hintStyle: CustomTextStyle.textRegular,
          ),
          const SizedBox(height: 10.0),
          Obx(
            () => CustomTextField(
              prefixIcon: const Icon(Icons.password_rounded),
              suffixIcon: GestureDetector(
                  onTap: () => controller.obscureText(),
                  child: controller.isObscure.value
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)),
              controller: controller.passwordController,
              hintText: 'Masukkan password',
              obscureText: controller.isObscure.value,
              hintStyle: CustomTextStyle.textRegular,
            ),
          ),
        ],
      ),
    );
  }
}

class SendCodeButton extends GetView<HomeController> {
  const SendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.loginFormKey.currentState!.validate()) {}
      },
      child: RoundedContainer(
        containerColor: Colors.pink,
        padding: const EdgeInsets.all(8.0),
        radius: 3.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.email,
              color: Colors.white,
            ),
            const SizedBox(width: 10.0),
            Text(
              'Kirim Kode melalui Email',
              style: CustomTextStyle.textRegular.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              icon: const Icon(Icons.close, size: 25.0)),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: Text(
            'Masukkan Email Anda',
            style: CustomTextStyle.textExtraLargeBold
                .copyWith(letterSpacing: 1.0, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Masukkan email ',
        style: CustomTextStyle.textLargeSemiBold.copyWith(letterSpacing: 1.5),
        children: <TextSpan>[
          TextSpan(
            text: 'untuk masuk ke XXXXXX atau\nmembuat akun baru',
            style:
                CustomTextStyle.textLargeRegular.copyWith(letterSpacing: 1.5),
          ),
        ],
      ),
    );
  }
}

class CautionText extends StatelessWidget {
  const CautionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'Dengan masuk atau mendaftar, saya menyetujui',
              style: CustomTextStyle.textRegular.copyWith(letterSpacing: 1.5)),
          TextSpan(
            text: '\nKetentuan Penggunaan XXXXX',
            style: CustomTextStyle.textRegular.copyWith(
                letterSpacing: 1.5,
                color: Colors.blue,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint('Ketentuan'),
          ),
          TextSpan(
              text: ' dan ',
              style: CustomTextStyle.textRegular.copyWith(letterSpacing: 1.5)),
          TextSpan(
            text: 'Kebijakan Privasi\nXXXXX',
            style: CustomTextStyle.textRegular.copyWith(
              letterSpacing: 1.5,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint('Privasi'),
          ),
        ],
      ),
    );
  }
}

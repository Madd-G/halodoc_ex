import 'package:flutter/material.dart';
import 'package:halodoc_ex/common/utils/utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isLaptopL(context) || Responsive.isLaptop(context)
        ? const FooterLaptop()
        : MediaQuery.of(context).size.width >= 750
            ? const FooterTablet()
            : const FooterSmall();
  }
}

class FooterSmall extends StatelessWidget {
  const FooterSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: size.width,
      height: 850.0,
      color: const Color(0XFF45568E),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1500.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25.0),
              Text(
                'Halodoc',
                style: CustomTextStyle.text3ExtraLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 25.0),
              Text(
                'Site Map',
                style:
                    CustomTextStyle.textLargeBold.copyWith(color: Colors.white),
              ),
              Text('FAQ',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Blog',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Syarat & Ketentuan',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Kebijakan Privasi',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Promo',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Karir',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Security',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Media',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 10.0),
              Text('Corporate Partnership',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 30.0),
              Text(
                'Layanan Pengaduan konsumen',
                style:
                    CustomTextStyle.textLargeBold.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 15.0),
              Text('PT Media Dokter Investama',
                  style: CustomTextStyle.textRegularBold
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 3.0),
              Text('Jl. H.R. rasuna Said Kav B32-33, Jakarta Selatan',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 3.0),
              Text('help@halodoc.com / 021-5095-9900',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 20.0),
              Text('Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 3.0),
              Text('Kementerian Perdagangan Republik Indonesia',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 3.0),
              Text('0853 1111 1010 (WhatsApp)',
                  style: CustomTextStyle.textRegular
                      .copyWith(color: Colors.white)),
              const SizedBox(height: 20.0),
              Text(
                'Download App di',
                style: CustomTextStyle.textExtraLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 13.0),
              Row(
                children: [
                  Image.network(
                      height: 50,
                      width: 100.0,
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Google_Play_Store_badge_EN.svg/2560px-Google_Play_Store_badge_EN.svg.png'),
                  const SizedBox(width: 5.0),
                  Image.network(
                      height: 50,
                      width: 100.0,
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Download_on_the_App_Store_RGB_blk.svg/440px-Download_on_the_App_Store_RGB_blk.svg.png'),
                  // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYun1EUhS89-tDulhZxyxTZHkiAoT_1c3qFw&usqp=CAU'),
                ],
              ),
              const SizedBox(height: 15.0),
              Text(
                'Apakah kamu Dokter?',
                style: CustomTextStyle.textLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 35.0,
                width: 110.0,
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Center(
                  child: Text(
                    'DAFTAR',
                    style: CustomTextStyle.textLargeSemiBold
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterTablet extends StatelessWidget {
  const FooterTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: size.width,
      height: 400.0,
      color: const Color(0XFF45568E),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1500.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25.0),
              Text(
                'Halodoc',
                style: CustomTextStyle.text3ExtraLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150.0,
                    child: Text(
                      'Site Map',
                      style: CustomTextStyle.textLargeBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Text(
                      '',
                      style: CustomTextStyle.textLargeBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    child: Text(
                      'Layanan Pengaduan konsumen',
                      style: CustomTextStyle.textLargeBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 210.0,
                    child: Text(
                      'Download App di',
                      style: CustomTextStyle.textExtraLargeSemiBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FAQ',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Blog',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Syarat & Ketentuan',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Kebijakan Privasi',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Promo',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Karir',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Security',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Media',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text('Corporate Partnership',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PT Media Dokter Investama',
                            style: CustomTextStyle.textRegularBold
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('Jl. H.R. rasuna Said Kav B32-33, Jakarta Selatan',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('help@halodoc.com / 021-5095-9900',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text(
                            'Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('Kementerian Perdagangan Republik Indonesia',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('0853 1111 1010 (WhatsApp)',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 210.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.network(
                                height: 50,
                                width: 100.0,
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Google_Play_Store_badge_EN.svg/2560px-Google_Play_Store_badge_EN.svg.png'),
                            const SizedBox(width: 5.0),
                            Image.network(
                                height: 50,
                                width: 100.0,
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Download_on_the_App_Store_RGB_blk.svg/440px-Download_on_the_App_Store_RGB_blk.svg.png'),
                            // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYun1EUhS89-tDulhZxyxTZHkiAoT_1c3qFw&usqp=CAU'),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Apakah kamu Dokter?',
                          style: CustomTextStyle.textLargeRegular
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 35.0,
                          width: 110.0,
                          decoration: const BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          child: Center(
                              child: Text(
                            'DAFTAR',
                            style: CustomTextStyle.textLargeSemiBold
                                .copyWith(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FooterLaptop extends StatelessWidget {
  const FooterLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: size.width,
      height: 350.0,
      color: const Color(0XFF45568E),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25.0),
              Text(
                'Halodoc',
                style: CustomTextStyle.text3ExtraLargeSemiBold
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.0,
                        child: Text(
                          'Site Map',
                          style: CustomTextStyle.textLargeBold
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 25.0),
                      SizedBox(
                        width: 100.0,
                        child: Text(
                          '',
                          style: CustomTextStyle.textLargeBold
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 380.0,
                    child: Text(
                      'Layanan Pengaduan konsumen',
                      style: CustomTextStyle.textLargeBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 210.0,
                    child: Text(
                      'Download App di',
                      style: CustomTextStyle.textExtraLargeSemiBold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('FAQ',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Blog',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Syarat & Ketentuan',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Kebijakan Privasi',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Promo',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 25.0),
                      SizedBox(
                        width: 100.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Karir',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Security',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Media',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 10.0),
                            Text('Corporate Partnership',
                                style: CustomTextStyle.textLargeRegular
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 380.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PT Media Dokter Investama',
                            style: CustomTextStyle.textRegularBold
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('Jl. H.R. rasuna Said Kav B32-33, Jakarta Selatan',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('help@halodoc.com / 021-5095-9900',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 10.0),
                        Text(
                            'Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('Kementerian Perdagangan Republik Indonesia',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                        const SizedBox(height: 3.0),
                        Text('0853 1111 1010 (WhatsApp)',
                            style: CustomTextStyle.textRegular
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 210.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.network(
                                height: 50,
                                width: 100.0,
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Google_Play_Store_badge_EN.svg/2560px-Google_Play_Store_badge_EN.svg.png'),
                            const SizedBox(width: 5.0),
                            Image.network(
                                height: 50,
                                width: 100.0,
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Download_on_the_App_Store_RGB_blk.svg/440px-Download_on_the_App_Store_RGB_blk.svg.png'),
                            // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYun1EUhS89-tDulhZxyxTZHkiAoT_1c3qFw&usqp=CAU'),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Apakah kamu Dokter?',
                          style: CustomTextStyle.textLargeRegular
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 35.0,
                          width: 110.0,
                          decoration: const BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          child: Center(
                              child: Text(
                            'DAFTAR',
                            style: CustomTextStyle.textLargeSemiBold
                                .copyWith(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

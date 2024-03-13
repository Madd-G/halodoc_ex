import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halodoc_ex/common/widgets/widgets.dart';
import 'package:halodoc_ex/modules/home/widgets/widgets.dart';
import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        double screenWidth = constraints.maxWidth;
        return SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  floating: true,
                  pinned: false,
                  snap: true,
                  // forceMaterialTransparency: true,
                  elevation: 16.0,
                  backgroundColor: Colors.white,
                  expandedHeight: 55.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Header(currentWidth: screenWidth),
                  ),
                ),
              ];
            },
            body: const AppBody(),
          ),
        );
      }),
    );
  }
}

// child: CustomScrollView(
//   slivers: [
//     SliverAppBar(
//       floating: true,
//       pinned: false,
//       stretch: true,
//       elevation: 1.0,
//       snap: true,
//       backgroundColor: Colors.white,
//       expandedHeight: 55.0,
//       flexibleSpace: FlexibleSpaceBar(background: Header()),
//     ),
//     SliverFillRemaining(
//       child: AppBody(),
//     )
//   ],
// ),

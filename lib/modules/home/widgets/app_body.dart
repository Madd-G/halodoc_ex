import 'package:flutter/material.dart';
import 'package:halodoc_ex/common/widgets/widgets.dart';
import 'package:halodoc_ex/modules/home/refactors/refactors.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Section1(),
              SizedBox(height: 30.0),
              Section2(),
              Section3(),
              SizedBox(height: 30.0),
              Section4(),
              Section5(),
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:airbnb_flutter/components/home/home_body_banner.dart';
import 'package:airbnb_flutter/components/home/home_body_popular.dart';
import 'package:airbnb_flutter/size.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    // SizedBox위젯을 가운데 정렬하기 위해서 Align을 사용했다. Center도 가능
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: const Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}

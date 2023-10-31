import 'package:airbnb_flutter/size.dart';
import 'package:airbnb_flutter/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      // 이미지와 글자를 겹치게 하기 위해서 Stack 위젯을 사용한다.
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
      // 이미지 모서리 둥글게
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      // Stack 위젯 내부에 위치 설정을 위해
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 200,
            ),
            child: Text(
              "이제, 여행은 가까운 곳에서",
              style: h4(
                mColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: gap_m,
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 200,
            ),
            child: Text(
              "새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.",
              style: subtitle1(
                mColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: gap_m,
          ),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                "가까운 여행지 둘러보기",
                style: subtitle2(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

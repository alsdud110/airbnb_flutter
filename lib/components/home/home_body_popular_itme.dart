import 'package:airbnb_flutter/constants.dart';
import 'package:airbnb_flutter/size.dart';
import 'package:airbnb_flutter/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final populaList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // 인기아이템은 전체화면의 70%의 1/3만큼 사이즈의 -5 의 크기를 가진다.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: const EdgeInsets.only(top: gap_xl),
      child: Container(
        // 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해 최소 제약조건을 잡아준다.
        constraints: const BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${populaList[id]}"),
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return const Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요 :0 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        const SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            const Text("한국"),
          ],
        ),
      ],
    );
  }
}

import 'package:airbnb_flutter/constants.dart';
import 'package:airbnb_flutter/size.dart';
import 'package:airbnb_flutter/styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        gap_m,
      ),
      child: Row(
        children: [
          _buildAppBarLogo(),
          const Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        const SizedBox(
          width: gap_s,
        ),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text(
          "회원가입",
          style: subtitle1(
            mColor: Colors.white,
          ),
        ),
        const SizedBox(
          width: gap_m,
        ),
        Text(
          "로그인",
          style: subtitle1(mColor: Colors.white),
        ),
      ],
    );
  }
}

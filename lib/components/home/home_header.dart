import 'package:airbnb_flutter/components/home/home_header_appbar.dart';
import 'package:airbnb_flutter/components/home/home_header_form.dart';
import 'package:airbnb_flutter/size.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}

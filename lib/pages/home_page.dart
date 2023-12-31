import 'package:airbnb_flutter/components/home/home_body.dart';
import 'package:airbnb_flutter/components/home/home_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}

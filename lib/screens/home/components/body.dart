import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app_ui/screens/home/components/recommend_plants.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_button.dart';

import 'featured_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TitleWithMoreButton(
            title: "Recommeded",
            press: () {},
          ),
          RecommendPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

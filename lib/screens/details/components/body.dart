import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/components/icon_card.dart';
import 'package:plant_app_ui/screens/details/components/image_and_icons.dart';
import 'package:plant_app_ui/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 400),
          SizedBox(
            height: kDefaultPadding - 5,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 84,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kBackgroundColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

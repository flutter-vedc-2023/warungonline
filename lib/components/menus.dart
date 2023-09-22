import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/pages/market_page.dart';
import 'package:gojek/theme.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 300,
        child:
            GridView.count(crossAxisCount: 3, mainAxisSpacing: 40, children: [
          ...menuIcons.map(
            (icon) => InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => MarketPage(warung: icon.title)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/${icon.icon}.svg',
                      width: 70,
                      height: 70,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      icon.title,
                      style: regular12_5.copyWith(color: dark2),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

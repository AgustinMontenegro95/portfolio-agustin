import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residencia",
                      text: "Argentina",
                    ),
                    AreaInfoText(
                      title: "Ciudad",
                      text: "Santiago del Estero",
                    ),
                    AreaInfoText(
                      title: "Edad",
                      text: "26",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        final Uri uri = Uri.parse(
                            "https://drive.google.com/file/d/1fILsVyhi7B26OZotsihmA7uwINPoqhiP/view?usp=sharing");
                        if (!await launchUrl(uri)) {
                          throw 'Could not launch $uri';
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DESCARGAR CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () async {
                              final Uri uri = Uri.parse(
                                  "https://www.linkedin.com/in/montenegro-agustin/");
                              if (!await launchUrl(uri)) {
                                throw 'Could not launch $uri';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              final Uri uri = Uri.parse(
                                  "https://github.com/AgustinMontenegro95");
                              if (!await launchUrl(uri)) {
                                throw 'Could not launch $uri';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

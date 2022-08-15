import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/certificates.dart';
import 'package:flutter_profile/screens/home/components/education.dart';
import 'package:flutter_profile/screens/home/components/works.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: HomeBanner(),
        ),
        MyProjects(),
        Education(),
        Work(),
        Certificates(),
      ],
    );
  }
}

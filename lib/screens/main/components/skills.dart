import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.81,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.40,
                label: "React",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.62,
                label: "Firebase",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillButton(skill: 'flutter'),
            SkillButton(skill: 'dart'),
            SkillButton(skill: 'firebase'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillButton(skill: 'html5'),
            SkillButton(skill: 'css3'),
            SkillButton(skill: 'javascript'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillButton(skill: 'firebase'),
            SkillButton(skill: 'mysql'),
            SkillButton(skill: 'git'),
          ],
        ),
      ],
    );
  }
}

class SkillButton extends StatelessWidget {
  final String skill;

  const SkillButton({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://flutter.dev');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _launchUrl();
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            'assets/images/skills/$skill.png',
          ),
        ),
      ),
    );
  }
}

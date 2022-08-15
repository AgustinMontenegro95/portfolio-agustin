import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          SizedBox(
            child: Text(
              project.description!,
              //maxLines: Responsive.isMobileLarge(context) ? 11 : 13,
              //overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () async {
              final Uri uri = Uri.parse(project.link!);
              if (!await launchUrl(uri)) {
                throw 'Could not launch $uri';
              }
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
              backgroundColor: primaryColor,
            ),
            child: Text(
              "Link >>",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          /* TextButton(
            onPressed: () async {
              final Uri uri = Uri.parse(project.link!);
              if (!await launchUrl(uri)) {
                throw 'Could not launch $uri';
              }
            },
            child: Text(
              "Link >>",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ), */
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Education.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.educations,
  }) : super(key: key);

  final EducationModel educations;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            educations.name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(educations.source!),
          Spacer(),
          SizedBox(
            child: Text(
              educations.text!,
              maxLines: Responsive.isMobileLarge(context) ? 5 : 6,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

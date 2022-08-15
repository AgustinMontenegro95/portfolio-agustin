import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Work.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    Key? key,
    required this.works,
  }) : super(key: key);

  final WorkModel works;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            works.name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(works.source!),
          Spacer(),
          SizedBox(
            child: Text(
              works.text!,
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

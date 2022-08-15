import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/education_card.dart';
import 'package:flutter_profile/models/Work.dart';
import 'package:flutter_profile/screens/home/components/works_card.dart';

import '../../../constants.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trabajos académicos",
          style: Theme.of(context).textTheme.headline6,
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Responsive(
            mobile: EducationGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge:
                EducationGridView(crossAxisCount: 1, mainAxisExtent: 180),
            tablet:
                EducationGridView(childAspectRatio: 1.1, mainAxisExtent: 180),
            desktop: EducationGridView(crossAxisCount: 1, mainAxisExtent: 180),
          ),
        ),
      ],
    );
  }
}

class EducationGridView extends StatelessWidget {
  const EducationGridView({
    Key? key,
    this.crossAxisCount = 1,
    this.childAspectRatio = 1.3,
    this.mainAxisExtent,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final double? mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_work.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: mainAxisExtent,
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => WorkCard(
        works: demo_work[index],
      ),
    );
  }
}

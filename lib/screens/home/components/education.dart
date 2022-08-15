import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Education.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/education_card.dart';

import '../../../constants.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Educación",
          style: Theme.of(context).textTheme.headline6,
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Responsive(
            mobile: EducationGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: EducationGridView(crossAxisCount: 2),
            tablet: EducationGridView(childAspectRatio: 1.1),
            desktop: EducationGridView(),
          ),
        ),
      ],
    );
  }
}

class EducationGridView extends StatelessWidget {
  const EducationGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_education.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 150,
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => EducationCard(
        educations: demo_education[index],
      ),
    );
  }
}

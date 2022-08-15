import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/certificates_card.dart';
import 'package:flutter_profile/models/Certificates.dart';

import '../../../constants.dart';

class Certificates extends StatelessWidget {
  const Certificates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Certificados",
          style: Theme.of(context).textTheme.headline6,
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Responsive(
            mobile: CertificatesGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: CertificatesGridView(crossAxisCount: 2),
            tablet: CertificatesGridView(childAspectRatio: 1.1),
            desktop: CertificatesGridView(),
          ),
        )
        /* SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_certificates.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: CertificatesCard(
                  certificates: demo_certificates[index],
                ),
              ),
            ),
          ),
        ), */
      ],
    );
  }
}

class CertificatesGridView extends StatelessWidget {
  const CertificatesGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_certificates.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => CertificatesCard(
        certificates: demo_certificates[index],
      ),
    );
  }
}

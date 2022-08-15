import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Certificates.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class CertificatesCard extends StatelessWidget {
  const CertificatesCard({
    Key? key,
    required this.certificates,
  }) : super(key: key);

  final CertificatesModel certificates;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            certificates.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(certificates.source!),
          Spacer(),
          Text(
            certificates.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () async {
              final Uri uri = Uri.parse(certificates.link!);
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
              final Uri uri = Uri.parse(certificates.link!);
              if (!await launchUrl(uri)) {
                throw 'Could not launch $uri';
              }
            },
            child: Text(
              "Link >>",
              style: TextStyle(color: primaryColor),
            ),
          ), */
        ],
      ),
    );
  }
}

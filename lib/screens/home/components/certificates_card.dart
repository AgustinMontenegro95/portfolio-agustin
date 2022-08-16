import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Certificates.dart';
import 'package:flutter_profile/screens/details_certificates.dart';
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
      decoration: BoxDecoration(
        color: secondaryColor,
        image: DecorationImage(
          image: new ExactAssetImage('assets/images/certificates/Flutter.jpg'),
          fit: BoxFit.fill,
          opacity: 0.1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            certificates.name!,
            textAlign: TextAlign.justify,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
          ),
          /* Text(
            certificates.source!,
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          Text(
            certificates.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, color: Colors.white),
          ), */
          //Spacer(),
          ElevatedButton(
            onPressed: () async {
              /* final Uri uri = Uri.parse(certificates.link!);
              if (!await launchUrl(uri)) {
                throw 'Could not launch $uri';
              } */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsCertificate(
                            certificate: certificates,
                          )));
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
              backgroundColor: primaryColor,
            ),
            child: Text(
              "Ver más",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

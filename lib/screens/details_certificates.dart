import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/Certificates.dart';

class DetailsCertificate extends StatelessWidget {
  final CertificatesModel certificate;

  const DetailsCertificate({Key? key, required this.certificate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("NEW PAGE")),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/certificates/Flutter.jpg',
                  height: 400),
              Column(
                children: [
                  Text(
                    certificate.name!,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    certificate.source!,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    certificate.text!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: TextButton(
                      onPressed: () async {
                        final Uri uri = Uri.parse(certificate.link!);
                        if (!await launchUrl(uri)) {
                          throw 'Could not launch $uri';
                        }
                      },
                      child: Text(
                        "View in site",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver"))
        ],
      ),
    );
  }
}

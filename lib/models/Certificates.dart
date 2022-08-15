class CertificatesModel {
  final String? name, source, text, link;

  CertificatesModel({this.name, this.source, this.text, this.link});
}

final List<CertificatesModel> demo_certificates = [
  CertificatesModel(
    name: "HTML, CSS, and Javascript for Web Developers",
    source: "Coursera",
    text: "ID de la credencial: MFZLVHDN35J7"
        "\nFecha de expedición: Mayo 2022",
    link:
        "https://www.coursera.org/account/accomplishments/certificate/MFZLVHDN35J7",
  ),
  CertificatesModel(
    name: "Introduction to Git and GitHub",
    source: "Coursera",
    text: "ID de la credencial: R9DGF9HACZBM"
        "\nFecha de expedición: Abril 2022",
    link:
        "https://www.coursera.org/account/accomplishments/certificate/R9DGF9HACZBM",
  ),
  CertificatesModel(
    name: "Scrum Fundamentals Certified (SFC)",
    source: "SCRUMstudy",
    text: "ID de la credencial: 909558"
        "\nFecha de expedición: Abril 2022",
    link:
        "https://www.scrumstudy.com/certification/verify?type=SFC&number=909558",
  ),
  /* CertificatesModel(
    name: "Roshan Shetty",
    source: "YouTube",
    text:
        "Very straightforward, professional and also the best flutter videos in the youtube! It will be great if you add some comments to your steps with 0.5 seconds pause before implementing this step. By meaning of steps, I mean not the basic, but structural steps, like 10-20 steps per video. However, thank you very much!",
  ), */
];

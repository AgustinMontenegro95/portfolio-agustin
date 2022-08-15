class Project {
  final String? title, description, link;

  Project({this.title, this.description, this.link});
}

List<Project> demo_projects = [
  Project(
    title: "Cosmere",
    description:
        "Guía de lectura para fans (no oficial). Diseño y desarrollo Fullstack de aplicación movil Android."
        "\nHerramientas y lenguajes de Programacion utilizados: Dart, Flutter, Firebase, GitHub, VS code."
        "\nAplicación disponible en Google Play.",
    link: "https://play.google.com/store/apps/details?id=com.soludev.cosmere",
  ),
  Project(
    title: "Digital Menu",
    description:
        "Generador QR para menus de restaurante disponibles en internet. Diseño y desarrollo Fullstack de aplicación movil Android."
        "\nHerramientas y lenguajes de Programacion utilizados: Dart, Flutter, Firebase, GitHub, VS code."
        "\nAplicación disponible en Google Play.",
    link:
        "https://play.google.com/store/apps/details?id=com.soludevarg.digitalmenu",
  ),
  Project(
    title: "Santiago Cocina",
    description:
        "Recetas de comidas. Diseño y desarrollo Fullstack de aplicación movil Android."
        "\nHerramientas y lenguajes de Programacion utilizados: Dart, Flutter, Firebase, GitHub, VS code."
        "\nAplicación disponible en Google Play.",
    link:
        "https://play.google.com/store/apps/details?id=com.soludevarg.santiagococinaapp",
  ),
  Project(
    title: "Sitio SoluDev",
    description: "Diseño y desarrollo aplicación movil web."
        "\nHerramientas y lenguajes de Programacion utilizados: Dart, FlutterGitHub, VS code.",
    link: "https://soludevs.web.app/",
  ),
  /* Project(
    title: "Welcome page, Login Page and Sign up page - Flutter UI",
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    title: "Covid-19 App - Flutter UI",
    description:
        "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  ), */
];

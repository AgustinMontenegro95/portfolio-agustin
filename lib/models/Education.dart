class EducationModel {
  final String? name, source, text;

  EducationModel({this.name, this.source, this.text});
}

final List<EducationModel> demo_education = [
  EducationModel(
    name: "Licenciatura en Sistemas de Información",
    source: "Universidad Nacional de Santiago del Estero",
    text: "Me encuentro cursando 5to año",
  ),
  EducationModel(
    name: "Curso de Ingles",
    source: "Universidad Nacional de Santiago del Estero",
    text:
        "Me encuentro desarrollando el curso dictado por la Facultad de Ciencias Exactas y Tecnologias.",
  ),
];

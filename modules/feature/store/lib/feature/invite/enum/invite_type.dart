// ignore_for_file: constant_identifier_names

enum InviteType {
  CreateParish,
  CreateUser,
  CreateParent,
}

enum InviteUserType {
  GodParent(text: "Padrinho/Madrinha"),
  Young(text: "Jovem"),
  Voluntary(text: "Voluntario(a)");

  const InviteUserType({
    required this.text,
  });

  final String text;
}

enum InviteStatus {
  active,
  used,
  inactive,
}

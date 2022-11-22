class ContactsModel {
  int id;
  String firstName;
  String? lastName;
  String? number;
  String? email;
  String? image;
  DateTime? birthday;

  ContactsModel({
    required this.id,
    this.firstName = 'Jason',
    this.lastName,
    this.number,
    this.email,
    this.image,
    this.birthday,
  });
}

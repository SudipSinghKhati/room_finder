class ConsumerEntity{
  final String? id;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String contactNumber;
  final String email;
  final String password;

  ConsumerEntity({
    this.id,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactNumber,
    required this.email,
    required this.password,

  });
}
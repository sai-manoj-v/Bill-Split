class User {
  String? firstName;
  String? lastName;
  String? email;
  String? imageURL;
  String? defaultCurrency;
  String? mobile;

  User(
      {required this.firstName,
      this.lastName,
      required this.email,
      required this.imageURL,
      required this.defaultCurrency,
      required this.mobile});
}

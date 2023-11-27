class User {
  final String name;
  final String cdsAccount;
  final String email;
  final String phone;
  final String crdbAccount;
  final String password;
  final String confirmPassword;

  User({
    required this.name,
    required this.cdsAccount,
    required this.email,
    required this.password,
    required this.phone,
    required this.crdbAccount,
    required this.confirmPassword,
  });
  toJson() {
    return {
      "name": name,
      "cds_account": cdsAccount,
      "email": email,
      "phone": phone,
      "crdb_account": crdbAccount,
      "confirm_password": confirmPassword,
    };
  }
}

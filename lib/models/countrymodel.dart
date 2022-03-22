class CountryModel {
  String? id;
  String? countryName;
  String? countryCode;
  String? countryDialingCode;
  String? flag;

  CountryModel(
      {this.id,
      this.countryName,
      this.countryCode,
      this.countryDialingCode,
      this.flag});

  CountryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryName = json['countryName'];
    countryCode = json['countryCode'];
    countryDialingCode = json['countryDialingCode'];
    flag = json['flag'];
  }
}
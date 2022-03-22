class CityModel {
  String? id;
  String? countryId;
  String? stateId;
  String? cityName;



  CityModel(
      {this.id,
      this.countryId,
      this.stateId,
      this.cityName,
     });

  CityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    countryId = json['countryId'].toString();
    stateId = json['stateId'].toString();
    cityName = json['cityName'].toString();

  }
}
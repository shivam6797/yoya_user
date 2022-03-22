class StateModel {
  String? id;
  String? countryId;
  String? stateName;


  StateModel(
      {this.id,
      this.countryId,
      this.stateName,
     });

  StateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    countryId = json['countryId'].toString();
    stateName = json['stateName'].toString();
  }
}
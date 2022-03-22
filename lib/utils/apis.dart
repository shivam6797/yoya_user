class APIS {
  static const String BaseUrl =
      'http://ec2-35-154-229-37.ap-south-1.compute.amazonaws.com:8081/';
  static const String login = BaseUrl + 'auth';
  static const String register = BaseUrl + 'signup';
  static const String verifyOtp = BaseUrl + 'authenticate';
  static const String getCountry = BaseUrl + 'api/v1/country/list?countryCode=';
  static const String getState = BaseUrl + 'api/v1/state/list?countryId=';
  static const String getCity = BaseUrl + 'api/v1/city/list?countryId=';
}

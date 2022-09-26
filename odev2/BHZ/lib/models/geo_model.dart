class Geo {
  String lat;
  String lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) {
    final String lat = json['lat'];
    final String lng = json['lng'];
    return Geo(lat: lat, lng: lng);
  }
}

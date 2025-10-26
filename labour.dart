class Labour {
  final String id;
  final String name;
  final String skill;
  final double latitude;
  final double longitude;
  final bool isAvailable;

  Labour({
    required this.id,
    required this.name,
    required this.skill,
    required this.latitude,
    required this.longitude,
    required this.isAvailable,
  });

  factory Labour.fromMap(Map<String, dynamic> data) {
    return Labour(
      id: data['id'],
      name: data['name'],
      skill: data['skill'],
      latitude: data['latitude'],
      longitude: data['longitude'],
      isAvailable: data['isAvailable'],
    );
  }
}

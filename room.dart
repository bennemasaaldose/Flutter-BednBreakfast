class Room {
  String name;
  String price;
  String imagePath;
  String people;
  String area;
  String rating;
  String desc;

  Room({
    required this.name, 
    required this.price, 
    required this.imagePath, 
    required this.people,
    required this.area,
    required this.rating,
    required this.desc
    });  

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _people => people;
  String get _area => area;
  String get _rating => rating;
  String get _desc => desc;
}
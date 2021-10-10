class Restaurant {
  String? id;
  String? name;
  String? description;
  String? pictureId;
  String? city;
  num? rating;
  Map<String, dynamic>? menus;

  Restaurant(
      {this.id,
      this.name,
      this.description,
      this.pictureId,
      this.city,
      this.rating,
      this.menus});

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    pictureId = json['pictureId'];
    city = json['city'];
    rating = json['rating'];
    menus = json['menus'];
  }
}

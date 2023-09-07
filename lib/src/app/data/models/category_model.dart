class CategoryModel {
  int? id;
  String? titel;
  String? desc;
  String? date;
  String? price;

  CategoryModel({this.id, this.titel, this.desc, this.date});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titel = json['titl'];
    desc = json['desc'];
    price = json['price'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'titl': titel,
        'desc': desc,
        'price': price,
        'date': date,
      };
}

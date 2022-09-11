// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore: camel_case_types
class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String desc1;
  final String img1;
  final String desc2;
  final String desc3;
  final String desc4;
  final String desc5;
  final String desc6;
  final String img3;
  final String img4;
  final String img5;
final String subh;
final String subh2;
  final String img2;
  final String image;
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.desc1,
    required this.img1,
    required this.desc2,
    required this.desc3,
    required this.desc4,
    required this.desc5,
    required this.desc6,
    required this.img3,
    required this.img4,
    required this.img5,
    required this.subh,
    required this.subh2,
    required this.img2,
    required this.image,
  });
  

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? desc1,
    String? img1,
    String? desc2,
    String? desc3,
    String? desc4,
    String? desc5,
    String? desc6,
    String? img3,
    String? img4,
    String? img5,
    String? subh,
    String? subh2,
    String? img2,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      desc1: desc1 ?? this.desc1,
      img1: img1 ?? this.img1,
      desc2: desc2 ?? this.desc2,
      desc3: desc3 ?? this.desc3,
      desc4: desc4 ?? this.desc4,
      desc5: desc5 ?? this.desc5,
      desc6: desc6 ?? this.desc6,
      img3: img3 ?? this.img3,
      img4: img4 ?? this.img4,
      img5: img5 ?? this.img5,
      subh: subh ?? this.subh,
      subh2: subh2 ?? this.subh2,
      img2: img2 ?? this.img2,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'desc1': desc1});
    result.addAll({'img1': img1});
    result.addAll({'desc2': desc2});
    result.addAll({'desc3': desc3});
    result.addAll({'desc4': desc4});
    result.addAll({'desc5': desc5});
    result.addAll({'desc6': desc6});
    result.addAll({'img3': img3});
    result.addAll({'img4': img4});
    result.addAll({'img5': img5});
    result.addAll({'subh': subh});
    result.addAll({'subh2': subh2});
    result.addAll({'img2': img2});
    result.addAll({'image': image});
  
    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      desc1: map['desc1'] ?? '',
      img1: map['img1'] ?? '',
      desc2: map['desc2'] ?? '',
      desc3: map['desc3'] ?? '',
      desc4: map['desc4'] ?? '',
      desc5: map['desc5'] ?? '',
      desc6: map['desc6'] ?? '',
      img3: map['img3'] ?? '',
      img4: map['img4'] ?? '',
      img5: map['img5'] ?? '',
      subh: map['subh'] ?? '',
      subh2: map['subh2'] ?? '',
      img2: map['img2'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, desc1: $desc1, img1: $img1, desc2: $desc2, desc3: $desc3, desc4: $desc4, desc5: $desc5, desc6: $desc6, img3: $img3, img4: $img4, img5: $img5, subh: $subh, subh2: $subh2, img2: $img2, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.desc1 == desc1 &&
      other.img1 == img1 &&
      other.desc2 == desc2 &&
      other.desc3 == desc3 &&
      other.desc4 == desc4 &&
      other.desc5 == desc5 &&
      other.desc6 == desc6 &&
      other.img3 == img3 &&
      other.img4 == img4 &&
      other.img5 == img5 &&
      other.subh == subh &&
      other.subh2 == subh2 &&
      other.img2 == img2 &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      desc1.hashCode ^
      img1.hashCode ^
      desc2.hashCode ^
      desc3.hashCode ^
      desc4.hashCode ^
      desc5.hashCode ^
      desc6.hashCode ^
      img3.hashCode ^
      img4.hashCode ^
      img5.hashCode ^
      subh.hashCode ^
      subh2.hashCode ^
      img2.hashCode ^
      image.hashCode;
  }
}

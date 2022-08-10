import 'package:equatable/equatable.dart';

class Menu extends Equatable {
  final String id;
  final String name;
  final String tag;
  final String icon;
  final List<Menu> subMenus;
  final List permissions;

  const Menu({
    required this.id,
    required this.name,
    required this.tag,
    required this.icon,
    required this.subMenus,
    required this.permissions,
  });

  @override
  List<Object?> get props => [id, name, tag, icon, subMenus, permissions];

  factory Menu.initial() => const Menu(
        id: '',
        name: '',
        tag: '',
        icon: '',
        subMenus: [],
        permissions: [],
      );

  @override
  bool get stringify => true;

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json['id'],
      name: json['name'],
      tag: json['tag'],
      icon: json['icon'],
      subMenus: (json['submenus'] as List)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: json['permissions'] as List,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'tag': tag,
      'icon': icon,
      'submenus': subMenus.map((e) => e.toMap()).toList(),
      'permissions': permissions,
    };
  }

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      id: map['id'],
      name: map['name'],
      tag: map['tag'],
      icon: map['icon'],
      subMenus: (map['submenus'] as List)
          .map((e) => Menu.fromMap(e as Map<String, dynamic>))
          .toList(),
      permissions: map['permissions'] as List,
    );
  }
}

import 'package:blueex_emp_app_flutter/features/user/domain/entity/menu_entity.dart';
import 'package:equatable/equatable.dart';

class Module extends Equatable {
  final int id;
  final String name;
  final String icon;
  final bool hide;
  final List<Menu> menus;

  const Module({
    required this.id,
    required this.name,
    required this.icon,
    required this.hide,
    required this.menus,
  });

  @override
  List<Object?> get props => [id, name, icon, menus];

  factory Module.initial() => const Module(
        id: 0,
        name: '',
        icon: '',
        hide: false,
        menus: [],
      );

  @override
  bool get stringify => true;

  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      hide: json['hide'],
      menus: (json['menus'] as List)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'icon': icon,
      'hide': hide,
      'menus': menus.map((e) => e.toMap()).toList(),
    };
  }

  factory Module.fromMap(Map<String, dynamic> map) {
    return Module(
      id: map['id'],
      name: map['name'],
      icon: map['icon'],
      hide: map['hide'],
      menus: (map['menus'] as List)
          .map((e) => Menu.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

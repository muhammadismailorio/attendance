import 'package:blueex_emp_app_flutter/features/user/domain/entity/menu_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';

class ModuleModel extends Module {
  const ModuleModel({
    required int id,
    required String name,
    required String icon,
    required bool hide,
    required List<Menu> menus,
  }) : super(
          id: id,
          name: name,
          icon: icon,
          hide: hide,
          menus: menus,
        );

  factory ModuleModel.fromJson(Map<String, dynamic> json) {
    return ModuleModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      hide: json['hide'],
      menus: (json['menus'] as List)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

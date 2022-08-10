import 'package:blueex_emp_app_flutter/features/user/data/model/module_model.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:blueex_emp_app_flutter/shared/mapper/mapper.dart';

class ModuleMapper extends Mapper<Module, ModuleModel> {
  @override
  Module mapModeltoEntity(ModuleModel model) {
    Module slider = Module(
      id: model.id,
      name: model.name,
      icon: model.icon,
      hide: model.hide,
      menus: model.menus,
    );
    return slider;
  }
}

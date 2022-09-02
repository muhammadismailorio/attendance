import 'package:blueex_emp_app_flutter/features/user/data/model/module_model.dart';
import 'package:blueex_emp_app_flutter/shared/network/network.dart';

class ModuleRemoteDataSource {
  Future<List<ModuleModel>> get(String token) async {
    try {
      var res = await NetworkHelper.request(
        url: 'modules/user',
        token: token,
      );

      List<ModuleModel> modules =
          res.map<ModuleModel>((json) => ModuleModel.fromJson(json)).toList();

      return modules;
    } catch (e) {
      rethrow;
    }
  }
}

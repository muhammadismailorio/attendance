import 'package:blueex_emp_app_flutter/features/user/data/model/slider_model.dart';
import 'package:blueex_emp_app_flutter/shared/network/network.dart';

class SliderRemoteDataSource {
  Future<SliderModel> get(String token) async {
    try {
      var res = await NetworkHelper.request(
        url: 'sliders',
        token: token,
      );

      List<String> images =
          res.map<String>((json) => json['image'].toString()).toList();

      SliderModel slider = SliderModel(images: images);

      return slider;
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:blueex_emp_app_flutter/features/user/data/model/slider_model.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';
import 'package:blueex_emp_app_flutter/shared/mapper/mapper.dart';

class SliderMapper extends Mapper<Slider, SliderModel> {
  @override
  Slider mapModeltoEntity(SliderModel model) {
    Slider slider = Slider(
      images: model.images,
    );
    return slider;
  }
}

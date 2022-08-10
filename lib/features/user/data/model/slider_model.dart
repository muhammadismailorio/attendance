import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';

class SliderModel extends Slider {
  const SliderModel({
    required List<String> images,
  }) : super(
          images: images,
        );

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      images: json['images'],
    );
  }

  Map<String, dynamic> toJson() => {
        "images": images,
      };
}

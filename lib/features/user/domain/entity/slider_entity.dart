import 'package:equatable/equatable.dart';

class Slider extends Equatable {
  final List<String> images;

  const Slider({
    required this.images,
  });

  factory Slider.initial() => const Slider(
        images: [],
      );

  @override
  List<Object> get props => [images];

  @override
  bool get stringify => true;
}

part of 'slider_cubit.dart';

class SliderState extends Equatable {
  final List images;

  const SliderState({
    required this.images,
  });

  factory SliderState.initial() => const SliderState(images: []);

  @override
  List<Object> get props => [images];

  @override
  bool get stringify => true;

  SliderState copyWith({
    List? images,
  }) {
    return SliderState(
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': images,
    };
  }

  factory SliderState.fromMap(Map<String, dynamic> map) {
    return SliderState(
      images: map['images'] as List,
    );
  }

  String toJson() => json.encode(toMap());

  factory SliderState.fromJson(String source) =>
      SliderState.fromMap(json.decode(source) as Map<String, dynamic>);
}


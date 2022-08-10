part of 'module_cubit.dart';

class ModuleState extends Equatable {
  final List<Module> modules;

  const ModuleState({required this.modules});

  factory ModuleState.initial() => const ModuleState(modules: []);

  @override
  List<Object> get props => [modules];

  @override
  bool get stringify => true;

  ModuleState copyWith({
    List<Module>? modules,
  }) {
    return ModuleState(
      modules: modules ?? this.modules,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modules': modules.map((e) => e.toMap()).toList(),
    };
  }

  factory ModuleState.fromMap(Map<String, dynamic> map) {
    return ModuleState(
      modules: (map['modules'] as List)
          .map((e) => Module.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModuleState.fromJson(String source) =>
      ModuleState.fromMap(json.decode(source) as Map<String, dynamic>);
}


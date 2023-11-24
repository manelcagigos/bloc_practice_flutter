// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'color_bloc.dart';

class ColorState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ColorInitialState extends ColorState {}

class ChangeColorState extends ColorState {
  final Color color;

  ChangeColorState({required this.color});

  @override
  List<Object?> get props => [color];
}

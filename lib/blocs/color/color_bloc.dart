import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitialState()) {
    on<ChangeColorEvent>((event, emit) {
      var randomColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
      emit(ChangeColorState(color: randomColor));
    });
  }
}

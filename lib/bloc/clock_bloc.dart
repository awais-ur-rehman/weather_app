// clock_bloc.dart
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'clock_event.dart';

class ClockBloc extends Bloc<ClockEvent, ClockState> {
  ClockBloc() : super(TimeInitial()) {
    on<UpdateTimeEvent>((event, emit) {
      emit(TimeUpdated(DateTime.now()));
    });

    // Start the timer to emit UpdateTimeEvent every minute
    Timer.periodic(const Duration(minutes: 1), (timer) {
      add(UpdateTimeEvent());
    });
  }
}

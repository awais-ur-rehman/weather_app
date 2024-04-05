// clock_event.dart
import 'package:equatable/equatable.dart';

abstract class ClockEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UpdateTimeEvent extends ClockEvent {}

// clock_state.dart
abstract class ClockState extends Equatable {
  @override
  List<Object> get props => [];
}

class TimeInitial extends ClockState {}

class TimeUpdated extends ClockState {
  final DateTime currentTime;

  TimeUpdated(this.currentTime);

  @override
  List<Object> get props => [currentTime];
}

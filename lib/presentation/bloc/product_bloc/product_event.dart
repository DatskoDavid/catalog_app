import 'package:equatable/equatable.dart';

abstract class QuizEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitProducts extends QuizEvent {
  InitProducts();
}

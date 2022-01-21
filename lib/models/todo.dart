import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final bool isSelected;
  final String taskName;

  const Todo({
    required this.isSelected,
    required this.taskName
  });

  @override   
  List<Object?> get props => [isSelected, taskName];
}

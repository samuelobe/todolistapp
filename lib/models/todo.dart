import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final bool isSelected;
  final String taskName;

  const Todo({
    required this.isSelected,
    required this.taskName
  });

  @override
  // TODO: implement props
  List<Object?> get props => [isSelected, taskName];
}

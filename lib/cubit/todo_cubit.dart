import 'package:bloc/bloc.dart';
import 'package:todolistapp/models/todo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(Todo item) {
    state.add(item);
    emit(state);
  }
}

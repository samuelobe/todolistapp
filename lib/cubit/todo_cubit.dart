import 'package:bloc/bloc.dart';
import 'package:todolistapp/models/todo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(Todo item) {
    List<Todo> temp = [...state, item];
    emit(temp);
  }

  // void removeTodo(Todo item) {
  //   emit(state.remove(item));
  // }
}

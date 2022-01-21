import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolistapp/cubit/todo_cubit.dart';
import 'package:todolistapp/pages/login_page.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        title: 'Todo List App',
        theme: ThemeData(
            unselectedWidgetColor: Colors.white,
            textTheme: const TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
              ),
              bodyText2: TextStyle(
                color: Colors.white,
              ),
            ),
            appBarTheme:
                const AppBarTheme(color: Color.fromRGBO(120, 140, 222, 1)),
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xFF1e1e1e)),
        home: const LoginPage(),
      ),
    );
  }
}

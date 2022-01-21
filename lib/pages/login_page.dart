import 'package:flutter/material.dart';
import 'package:todolistapp/pages/todo_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username = "hello";
  String password = "world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(120, 140, 222, 1),
                            width: 2.0),
                      ),
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(color: Colors.white)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the username';
                    } else if (value != username) {
                      return 'Please enter correct password';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(120, 140, 222, 1),
                            width: 2.0),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.white)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the password';
                    } else if (value != password) {
                      return 'Please enter correct password';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TodoPage()));
                    }
                  },
                  child: const Text("Sign In"))
            ],
          ),
        ),
      ),
    );
  }
}

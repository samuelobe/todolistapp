import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.isUsername,
  }) : super(key: key);

  final bool isUsername;
  final String username = "hello";
  final String password = "world";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromRGBO(120, 140, 222, 1), width: 2.0),
            ),
            hintText:
                isUsername ? 'Enter your username' : 'Enter your password',
            hintStyle: const TextStyle(color: Colors.white)),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return isUsername
                ? 'Please enter the username'
                : 'Please enter your password';
          } else if (value != "hello") {
            return isUsername
                ? 'Please enter the correct username'
                : 'Please enter correct password';
          }

          return null;
        },
      ),
    );
  }
}

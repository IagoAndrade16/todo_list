import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'exemplo@exemplo.com',
              errorText: null,
              prefixText: 'R\$',
              suffixText: 'cm'
            ),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.purple,
            ),
          ),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 211, 118, 130),
              Color.fromARGB(255, 253, 181, 168),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        );
    return _buildBodyBack();
  }
}

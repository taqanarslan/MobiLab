import 'package:flutter/material.dart';
import 'matrix_list_widget.dart';

class MatrixScreen extends StatelessWidget {
  const MatrixScreen({Key? key}) : super(key: key);
  final String _appBarTitle = 'Sky Lab Hw 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: const ListWidget(),
    );
  }
}
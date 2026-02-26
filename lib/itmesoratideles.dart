import 'package:flutter/material.dart';

class ItmeSoraTideles extends StatelessWidget {
  String content;

  int index;

  ItmeSoraTideles({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content(${index + 1})',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

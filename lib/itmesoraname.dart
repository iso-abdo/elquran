import 'package:flutter/material.dart';

class ItmeSoraName extends StatelessWidget {
  String name;

  ItmeSoraName({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}

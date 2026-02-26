import 'package:flutter/material.dart';
import 'package:quran/soratidelesname.dart';

class ItmeSoraName extends StatelessWidget {
  String name;
  int index;

  ItmeSoraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
            SoraDitelesName.routName,
            arguments: SoratidelesArgs
              (name: name,
                index: index)
        );
      },
      child: Text(name,
        textAlign: TextAlign.center,
        style: Theme
            .of(context)
            .textTheme
            .bodySmall,
      ),
    );
  }
}

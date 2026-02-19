import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/backgrund.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('quran', style: Theme
                .of(context)
                .textTheme
                .bodyLarge),
          ),
        )

      ],
    );
  }
}

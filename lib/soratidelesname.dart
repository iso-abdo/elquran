import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/appcolors.dart';
import 'package:quran/itmesoratideles.dart';

class SoraDitelesName extends StatefulWidget {
  static const String routName = 'soradetiles';

  @override
  State<SoraDitelesName> createState() => _SoraDitelesNameState();
}

class _SoraDitelesNameState extends State<SoraDitelesName> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SoratidelesArgs;
    if (verses.isEmpty) {
      loadfiles(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/backgrund.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.prymarylightmod,
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ItmeSoraTideles(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
        ),
      ],
    );
  }

  //
  void loadfiles(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    content.split('\n');
    List<String> lines = content.split('\n');
    for (int i = 0; i < lines.length; i++) {
      print(i);
    }
    verses = lines;
    setState(() {});
  }
}

class SoratidelesArgs {
  String name;
  int index;

  SoratidelesArgs({required this.name, required this.index});
}

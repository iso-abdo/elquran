import 'package:flutter/material.dart';
import 'package:quran/hadethtap.dart';
import 'package:quran/qurantap.dart';
import 'package:quran/sephatap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndx = 0;

  @override
  Widget build(BuildContext context) {
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
            title: Text('المسلم', style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(
              context,
            ).copyWith(canvasColor: Theme.of(context).primaryColorLight),
            child: BottomNavigationBar(
              currentIndex: selectedIndx,
              onTap: (index) {
                selectedIndx = index;
                setState(() {});
              },

              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quranicon.png')),
                  label: 'القران',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: 'الحديث',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'السبحه',
                ),
              ],
            ),
          ),
          body: tabs[selectedIndx],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTap(), HadethTap(), SabhaTap()];
}
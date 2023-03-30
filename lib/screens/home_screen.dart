import 'package:flutter/material.dart';
import 'package:japan_speaker/screens/FamilyMember.dart';
import 'package:japan_speaker/screens/Phases.dart';
import 'package:japan_speaker/screens/color_screen.dart';
import 'package:japan_speaker/screens/number_screen.dart';
import 'package:japan_speaker/widgets/card.dart';

class HomeScreen extends StatelessWidget {
   Map<String, StatelessWidget> sections = {
    "Numbers":  NumberScreen(),
    "Family Member": const FamilyMember(),
    "Colors":const ColorScreen(),
    // "phases":const PhasesScreen()
  };

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Japans Language"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: sections.length,
          itemBuilder: (context, index) => Mycard(
            text: sections.entries.elementAt(index).key.toString(),
            onpress: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => sections.entries.elementAt(index).value,));
            },
          ),
        ),
      ),
    ));
  }
}

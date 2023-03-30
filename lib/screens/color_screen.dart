import 'package:flutter/material.dart';

import '../modules/item.dart';
import '../widgets/item_data.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
          // width: size.width*0.19,
          child: ListView.builder(
            itemCount: colorLists.length,
            itemBuilder: (context, index) {
              return ItemData(
                //assets/sounds/colors/black.wav
                item: colorLists[index],
                imgType: "color",
                directory: 'colors',
              );
            },
          ),
        ),
      ),
    );
  }
}

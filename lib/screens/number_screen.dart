import 'package:flutter/material.dart';
import 'package:japan_speaker/widgets/item_data.dart';

import '../modules/item.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
          // width: size.width*0.19,
          child: ListView.builder(
            itemCount: Numbers.length,
            itemBuilder: (context, index) {
              return ItemData(item: Numbers[index], imgType: 'number',directory: "numbers",);
            },
          ),
        ),
      ),
    );
  }
}

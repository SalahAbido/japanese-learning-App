import 'package:flutter/material.dart';

import '../modules/item.dart';
import '../widgets/item_data.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Member"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
          // width: size.width*0.19,
          child: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return ItemData(
                item: familyMembers[index],
                imgType: "family",
                directory: 'family_members',
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:japan_speaker/modules/item.dart';
import 'package:just_audio/just_audio.dart';

class ItemData extends StatelessWidget {
  ItemData({
    Key? key,
    required this.item,
    required this.imgType,
    required this.directory,
  }) : super(key: key);
  final Item item;
  final String imgType;
  final String directory;
  final player = AudioPlayer(); // Create a player

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.1,
          child: Row(
            children: [
              Container(
                color: Colors.tealAccent,
                child: Image.asset(item.engName == "yellow"
                    ? "assets/images/$directory/${item.engName}.png"
                    : "assets/images/$directory/${imgType}_${item.engName}.png"),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    item.engName,
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Text(
                    item.japName,
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                  onPressed: () async {
                    final duration = player.setAsset(
                        'assets/sounds/$directory/${item.engName.replaceAll('_', ' ')}.wav',
                        preload: true);
                    await player.play();
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          // thickness of the line
          indent: 0,
          // empty space to the leading edge of divider.
          endIndent: 0,
          // empty space to the trailing edge of the divider.
          color: Colors.white,
          // The color to use when painting the line.
          height: 5, // The divider's height extent.
        ),
      ],
    );
  }
}

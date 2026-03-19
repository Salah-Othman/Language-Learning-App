import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/model/number_model.dart';
import 'package:language_learning_app/widgets/custom_text.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  final List<NumberModel> numbers = [
    NumberModel(
      img: 'assets/images/numbers/number_one.png',
      eng: 'One',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_two.png',
      eng: 'Two',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_three.png',
      eng: 'Three',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_four.png',
      eng: 'Four',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_five.png',
      eng: 'Five',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_six.png',
      eng: 'Six',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_seven.png',
      eng: 'Seven',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_eight.png',
      eng: 'Eight',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_nine.png',
      eng: 'Nine',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_ten.png',
      eng: 'Ten',
      korein: 'inch',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 68, 57),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: CustomText(
          text: 'Numbers',
          color: Colors.white,
          size: 26,
          weight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: numbers.length,
          separatorBuilder: (context, index) => SizedBox(height: 8),
          itemBuilder: (context, index) {
            final number = numbers[index];
            return Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 226, 140, 11),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 178, 134),
                    ),
                    child: Image.asset(number.img),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: number.korein,
                              color: Colors.white,
                              size: 16,
                              weight: FontWeight.w600,
                            ),
                            SizedBox(height: 8),
                            CustomText(
                              text: number.eng,
                              color: Colors.white,
                              size: 16,
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                /// Play Sound
                                await player.play(AssetSource(number.sound));
                              },
                              icon: Icon(Icons.play_arrow, color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () async {
                                await player.pause();
                              },
                              icon: Icon(Icons.pause, color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () async {
                                await player.stop();
                              },
                              icon: Icon(Icons.stop, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

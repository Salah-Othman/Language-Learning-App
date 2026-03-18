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
    ),
    NumberModel(
      img: 'assets/images/numbers/number_two.png',
      eng: 'Two',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_three.png',
      eng: 'Three',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_four.png',
      eng: 'Four',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_five.png',
      eng: 'Five',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_six.png',
      eng: 'Six',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_seven.png',
      eng: 'Seven',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_eight.png',
      eng: 'Eight',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_nine.png',
      eng: 'Nine',
      korein: 'inch',
    ),
    NumberModel(
      img: 'assets/images/numbers/number_ten.png',
      eng: 'Ten',
      korein: 'inch',
    ),
  ];

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
                        SizedBox(width: 110),
                        IconButton(
                          onPressed: () {
                            /// Play Sound
                           
                          },
                          icon: Icon(Icons.play_arrow, color: Colors.white),
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

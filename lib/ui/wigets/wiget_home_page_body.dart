import 'package:flutter/material.dart';

class WigetHomePageBody extends StatelessWidget {
  const WigetHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/ztkt_Logo.png')),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                child: Text(
                    'Зерновой Терминальный комплекс Тамань расположен: \nКраснодарский край, Темрюкский район, п.Волна, 1500 мертов западнее. \nКоординаты: \n45°08\u002701" северной широты\n36°40\u002727" восточной долготы '),
              ),
            ),
            Expanded(
                child:
                    Image(image: AssetImage('assets/images/scale_1200.jpg'))),
          ],
        ),
      ),
    );
  }
}

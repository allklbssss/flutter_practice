import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/material.dart';

class BuyRoomPage extends StatefulWidget {
  @override
  _BuyRoomPageState createState() => _BuyRoomPageState();
}

class _BuyRoomPageState extends State<BuyRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.5, 0.8),
                    colors: [Colors.white, Colors.grey[300]]),
              ),
              child: Text(
                'Куплю',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          PFText('Желаемый район'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.only(left: 5, top: 5, right: 10),
                height: 40,
                width: MediaQuery.of(context).size.width / 3 * 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Text('Укажите место',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      letterSpacing: 1.0,
                      decoration: TextDecoration.none,
                    ))),
          ),
          PFText('Площадь комнаты'),
          SliderSContainer(),
          PFText('Описание объявления'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 150,
              width: MediaQuery.of(context).size.width / 3 * 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Text(
                'Введите описание',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  letterSpacing: 1.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          PFText('Цена'),
          SliderContainer(),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   SwipeablePageRoute(
                //     onlySwipeFromEdge: true,
                //     builder: (BuildContext context) => (),
                //   ),
                // );
              },
              child: Button('Разместить'),
            ),
          ),
        ],
      ),
    );
  }
}

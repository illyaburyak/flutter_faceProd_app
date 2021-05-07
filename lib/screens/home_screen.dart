import 'package:flutter/material.dart';

const WHITE = 'white';
const BLACK = 'black';
const GREY = 'grey';

const Map<String, Color> myColors = {
  WHITE: Color.fromRGBO(249, 249, 249, 1),
  BLACK: Color.fromRGBO(21, 21, 22, 1),
  GREY: Color.fromRGBO(180, 179, 179, 1),
};

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeBar(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COSMETICS THAT',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Everyone loves!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Pannel(
                            text: 'Bodywash',
                            bgColor: myColors[WHITE],
                            siseNum: 16),
                        Pannel(
                            text: 'Costemics',
                            bgColor: myColors[WHITE],
                            siseNum: 16),
                        Pannel(
                            text: 'Face carre',
                            bgColor: myColors[WHITE],
                            siseNum: 16),
                        Pannel(
                            text: 'All',
                            bgColor: myColors[BLACK],
                            txtColor: myColors[WHITE],
                            siseNum: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text('Hello'),
            ],
          ),
        ),
      ],
    );
  }
}

class Pannel extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color txtColor;
  final double siseNum;
  const Pannel({
    this.bgColor,
    @required this.text,
    this.txtColor,
    this.siseNum,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: TextStyle(
          color: txtColor,
          fontSize: siseNum,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: bgColor,
    );
  }
}

Widget _homeBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      backgroundColor: myColors[WHITE],
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyButton(
          myImg: Icons.menu,
          myColor: myColors[BLACK],
          imgSize: 35,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyButton(
            myImg: Icons.search,
            myColor: myColors[BLACK],
            imgSize: 35,
          ),
        ),
      ],
    ),
  );
}

class MyButton extends StatelessWidget {
  final IconData myImg;
  final Color myColor;
  final double imgSize;
  const MyButton({
    @required this.myImg,
    @required this.myColor,
    @required this.imgSize,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        myImg,
        color: myColor,
        size: imgSize,
      ),
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Faked Animation')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovedCat(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Hero(
              tag: 'Cat',
              child: Image.asset(
                'assets/popcat2.png',
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovedCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Center(
          child: Hero(
            tag: 'Cat',
            child: Image.asset(
              'assets/popcat1.png',
              width: 120,
            ),
          ),
        ),
      ),
    );
  }
}

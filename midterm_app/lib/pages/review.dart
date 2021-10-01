import 'package:flutter/material.dart';

class ReviewReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xFFEDE7F6),
              child: ListTile(
                onLongPress: () {},
                leading: Image(
                  image: AssetImage('assets/images/review_midnight.jpg'),
                ),
                title: Text('Dinosour gives 8 score.'),
                subtitle: Text(
                    'What Cat is very professional and always does a good job on our baby . Dinosour always comes out looking handsome as ever!! '),
              ),
            ),
            Container(
              color: Color(0xFFC5CAE9),
              child: ListTile(
                onLongPress: () {},
                leading: Image(
                  image: AssetImage('assets/images/review_midnight.jpg'),
                ),
                title: Text('Midnight gives 10 score.'),
                subtitle: Text(
                    'Midnight is comfortable and happy with What Cat this is our second fur baby with him truly appreciate him and I would recommend him to my friends and other. '),
              ),
            ),
            Container(
              color: Color(0xFFB2DFDB),
              child: ListTile(
                onLongPress: () {},
                leading: Image(
                  image: AssetImage('assets/images/review_leo.jpeg'),
                ),
                title: Text('Leo gives 9 score.'),
                subtitle: Text(
                    'He always ask me what kind of cut? My respond is: use your judgement. As always he does a great job. Love his work, never a disappointment.'),
              ),
            ),
            Container(
              color: Color(0xFFE6EE9C),
              child: ListTile(
                onLongPress: () {},
                leading: Image(
                  image: AssetImage('assets/images/review_cindy.jpeg'),
                ),
                title: Text('Cindy gives 10 score.'),
                subtitle: Text(
                    'This is the first time we’ve gone to grooming and must say I’m impressed! Cindy looks terrific and groomer is patient and accommodating.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

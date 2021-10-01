import 'package:flutter/material.dart';
import 'package:midterm_app/pages/menu.dart';

import 'about_us.dart';
import 'review.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: TopPart(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.shower, color: Colors.teal[200]),
          tooltip: 'What Cat Menu',
          onPressed: () {}),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cat Grooming'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'About Us',
              ),
              Tab(
                text: 'Reviews',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: AboutUs(),
            ),
            Center(
              child: ReviewReview(),
            ),
          ],
        ),
      ),
    );
  }
}

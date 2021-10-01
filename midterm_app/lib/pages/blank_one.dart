import 'package:flutter/material.dart';

class BlankOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: TopPart(),
    );
  }
}

AppBar BuildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
        icon: Icon(Icons.list, color: Colors.teal[200]),
        tooltip: 'What Cat Menu',
        onPressed: () {}),
  );
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: '',
              ),
              Tab(
                text: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

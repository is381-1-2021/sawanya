import 'package:flutter/material.dart';
import 'package:midterm_app/models/form_model.dart';
import 'package:provider/provider.dart';

class ReturnForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<FormModel>(
                builder: (context, model, child) {
                  return Text(
                      'Owner /n Name - ${model.firstName} ${model.lastName}  /n Age - ${model.age} /n Pet /n Name - ${model.catName} /nBreed - ${model.catBreed} /nWeight - ${model.catWeight}');
                },
              ),
            ),
          ],
        ),
      ),
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

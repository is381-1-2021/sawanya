import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grooming Services'),
      ),
      body: GroomingForm(),
    );
  }
}

class GroomingForm extends StatefulWidget {
  @override
  _GroomingFormState createState() => _GroomingFormState();
}

class _GroomingFormState extends State<GroomingForm> {
  final _formKey = GlobalKey<FormState>();
  String _catBreed = '';
  String _firstName = '';
  String _lastName = '';
  String _catName = '';
  num _catWeight = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(''),
            Text(
              'Owner information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.face),
                hintText: 'Your first name ',
                labelText: 'First Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter firstname.';
                }
              },
              onSaved: (value) {
                _firstName = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.face),
                hintText: 'Your last name ',
                labelText: 'Last Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter lastname.';
                }
              },
              onSaved: (value) {
                _lastName = value!;
              },
            ),
            Text(''),
            Text(''),
            Text(
              'Pets information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.pets),
                hintText: 'Your cat name',
                labelText: 'Cat Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your cat name.';
                }
              },
              onSaved: (value) {
                _catName = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.pets),
                hintText: 'Your cat breed',
                labelText: 'Cat breed',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your cat breed.';
                }
              },
              onSaved: (value) {
                _catBreed = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.pets),
                hintText: 'Your cat weight',
                labelText: 'Cat weight',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter cat weight.';
                }

                try {
                  if (num.parse(value) < 0.1) {
                    return 'Please enter valid weight.';
                  }
                } catch (e) {
                  return 'Please enter number only';
                }
              },
              onSaved: (value) {
                _catWeight = num.parse(value!);
              },
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(primary: Colors.deepOrange.shade200),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  var response =
                      'Owner : $_firstName $_lastName /n Cat : $_catName $_catBreed $_catWeight kg';
                  Navigator.pop(context, response);
                }
                ;
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

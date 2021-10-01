import 'package:flutter/material.dart';
import 'package:midterm_app/models/grooming_form.dart';
import 'package:provider/provider.dart';

import 'return_form.dart';

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
  int _catWeight = 2;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Form(
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
            initialValue: context.read<FormModel>().firstName,
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.groups),
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
            initialValue: context.read<FormModel>().lastName,
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.snowshoeing),
              hintText: 'Your age ',
              labelText: 'Age',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter age.';
              }

              try {
                if (int.parse(value) < 15) {
                  return 'Please enter valid age => 15+';
                }
              } catch (e) {
                return 'Please enter number only';
              }
              var a = null;
              var b = '';
            },
            onSaved: (value) {
              _age = int.parse(value!);
            },
            initialValue: context.read<FormModel>().age,
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
            initialValue: context.read<FormModel>().catName,
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
            initialValue: context.read<FormModel>().catBreed,
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
                if (int.parse(value) < 0.1) {
                  return 'Please enter valid age.';
                }
              } catch (e) {
                return 'Please enter number only';
              }
            },
            onSaved: (value) {
              _catWeight = int.parse(value!);
            },
            initialValue: context.read<FormModel>().catWeight,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                context.read<FormModel>().firstName = _firstName;
                context.read<FormModel>().lastName = _lastName;
                context.read<FormModel>().age = _age;
                context.read<FormModel>().catName = _catName;
                context.read<FormModel>().catBreed = _catBreed;
                context.read<FormModel>().catWeight = _catWeight;

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReturnForm()),
                );
              }
            },
            child: Text('Finish'),
          ),
        ],
      ),
    );
  }
}

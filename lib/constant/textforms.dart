import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  final String? labelText;
  final bool obscureText;


  TextForm({
    super.key,
    required this.labelText,
    required this.validator,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formState,
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          validator: validator,
          
        ),
      ),
    );
  }

}




  // List<Map<String, dynamic>> dbc = [
  //   {
  //     'name': 'cappuccion',
  //   },
  //   {
  //     'name': 'amricano',
  //   },
  //   {
  //     'name': 'icedcoffee',
  //   },
  //   {
  //     'name': 'espresso',
  //   },
  //   {
  //     'name': 'tost',
  //   },
  //   {
  //     'name': 'tea',
  //   },
  // ];



//after validiator

  // onChanged: (value) {
          //   if (value.isEmpty) {
          //     dbc = dbc;
          //   } else {
          //     dbc = dbc.where(
          //       (element) {
          //         return (element['name'])
          //             .toLowerCase()
          //             .contains(value.toLowerCase());
          //       },
          //     ).toList();
          //   }
          //   setState(() {});
          // },

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {
  final String? hinttext;
  final TextEditingController controller;
  final void Function()? ontap;
  GlobalKey<FormState> statute = GlobalKey<FormState>();

   SearchBar({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: statute,
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'Please enter a search term';
          }return null;
          
        },
        controller: controller,
        onTap: ontap,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: hinttext,
          filled: true,
          fillColor: Colors.grey[800],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

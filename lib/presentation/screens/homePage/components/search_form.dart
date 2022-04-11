// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../helpers/constants.dart';

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value){},
        decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white54,
            hintText: "Search Jara",
            prefixIcon: Icon(Icons.search, color: Colors.grey, size: 33, ),
            border: koutlineInputBorder,
          enabledBorder: koutlineInputBorder,
          focusedBorder: koutlineInputBorder,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

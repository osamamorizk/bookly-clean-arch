import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: const Icon(size: 15, FontAwesomeIcons.magnifyingGlass),
          hintText: 'Search',
          border: buildTextFieldBorders(),
          enabledBorder: buildTextFieldBorders()),
    );
  }

  OutlineInputBorder buildTextFieldBorders() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, this.onChange ,this .onPressed});
  void Function(String)? onChange;
   void Function()? onPressed;
  // TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChange,
      //controller: controller,
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: IconButton(
            icon: const Opacity(
              opacity: .7,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
                color: Colors.white,
              ),
            ),
            onPressed: onPressed,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}

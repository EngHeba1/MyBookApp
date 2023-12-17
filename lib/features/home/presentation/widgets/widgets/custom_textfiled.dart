import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: GestureDetector(
            onTap: (){

            },
            child: IconButton(
              icon: const Opacity(
                opacity: .7,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
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

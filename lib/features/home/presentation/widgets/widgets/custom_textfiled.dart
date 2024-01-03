import 'package:bookly/features/home/presentation/manger/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key});
 // void Function(String)? onChange;
   //void Function()? onPressed;
  final TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:(value) {
        BlocProvider.of<SearchCubit>(context).fetchSearchBooks(querySearch: value);
      },
      controller: controller,
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
            onPressed: () {
              BlocProvider.of<SearchCubit>(context).fetchSearchBooks(querySearch: controller.text);
            },
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

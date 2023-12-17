
import 'package:bookly/features/home/presentation/widgets/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/uitls/style/text_style.dart';
import 'custom_textfiled.dart';

class SerchBody extends StatefulWidget {
  const SerchBody({super.key});

  @override
  State<SerchBody> createState() => _SerchBodyState();
}

class _SerchBodyState extends State<SerchBody> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Search Result",
                style: MyTextStyle.textStyle20(),
              )),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

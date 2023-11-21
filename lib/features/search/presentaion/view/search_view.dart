import 'package:flutter/material.dart';

import '../widgets/serch_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SerchBody(),
    );
  }
}

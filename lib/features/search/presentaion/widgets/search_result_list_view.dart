import 'package:flutter/cupertino.dart';

import '../../../home/presentation/widgets/best_seller_list_view_item.dart';
import 'list_view_search_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //  physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ListViewSearchItem(),
      itemCount: 10,
    );
  }
}

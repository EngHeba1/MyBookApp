import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_image.dart';

class  SimellerBooksListView extends StatelessWidget {
  const  SimellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(url: 'EgZjaHJvbWUyBggAEEUYOTIKCAEQABixAxiABDIGCAIQRRhAMgcIAxAAGIAEMgcIBBAuGIAEMgYIBRBFGD0yBggGEEUYPDIGCAcQRRg80gEIMzc0NGowajeoAgCwAgA',),
        ),
        itemCount: 4,
      ),
    );
  }
}

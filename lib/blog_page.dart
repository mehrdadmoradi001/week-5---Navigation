import 'package:flutter/material.dart';
import 'package:flutter_navigation/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
   BlogScreen({Key? key}) : super(key: key);

  final List<Widget> listBlogWidget = [
    getBlogPost(ImageName: 's', title: 'SafeMoon'),
    getBlogPost(ImageName: 'a', title: 'Alchemy Pay'),
    getBlogPost(ImageName: 'c', title: 'Cosmos'),
    //getBlogPost(ImageName: 'r', title: 'X Ripple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _getAppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    style: TextButton.styleFrom(primary: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        ' VIP اخبار و سیگنال‌های',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

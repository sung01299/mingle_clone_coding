import 'package:flutter/material.dart';
import 'package:mingle/widget/contents_list.dart';
import 'package:mingle/appbars/reusableAppBar.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:
            ReusableAppBar(subtitle: "홍콩대", title: "잔디밭", lastCategory: "학생회"),
        body: TabBarView(
          children: [
            ContentList(),
            ContentList(),
            ContentList(),
            ContentList(),
          ],
        ),
      ),
    );
  }
}

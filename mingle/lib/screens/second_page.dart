import 'package:flutter/material.dart';
import 'package:mingle/widget/contents_list.dart';
import 'package:mingle/appbars/reusableAppBar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: ReusableAppBar(
          subtitle: "모든 학교의 학생들이 모인",
          title: "광장",
          lastCategory: "밍글소식",
        ),
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

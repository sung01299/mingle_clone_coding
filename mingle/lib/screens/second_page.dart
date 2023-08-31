import 'package:flutter/material.dart';
import 'package:mingle/widget/contents_list.dart';
import 'package:mingle/appbars/reusableAppBar.dart';
import 'package:mingle/screens/add_post.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: const ReusableAppBar(
          subtitle: "모든 학교의 학생들이 모인",
          title: "광장",
          lastCategory: "밍글소식",
        ),
        body: const TabBarView(
          children: [
            ContentList(),
            ContentList(),
            ContentList(),
            // ContentList(),
            Center(
              child: Text("hihi"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.orange,
          child: const Icon(Icons.edit_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddPost()));
          },
        ),
      ),
    );
  }
}

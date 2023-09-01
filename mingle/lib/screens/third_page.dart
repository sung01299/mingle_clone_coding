import 'package:flutter/material.dart';
import 'package:mingle/widget/contents_list.dart';
import 'package:mingle/screens/add_post.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 0,
          leadingWidth: 300,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "홍콩대",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "잔디밭",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () => {},
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(child: Text("전체글", style: TextStyle(color: Colors.black))),
              Tab(child: Text("자유", style: TextStyle(color: Colors.black))),
              Tab(child: Text("질문", style: TextStyle(color: Colors.black))),
              Tab(child: Text("학생회", style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // temp data
            ContentList(),
            ContentList(),
            ContentList(),
            ContentList(),
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

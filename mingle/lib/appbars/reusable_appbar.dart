import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize {
    return const Size.fromHeight(100);
  }

  const ReusableAppBar(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.lastCategory})
      : super(key: key);

  final String title;
  final String subtitle;
  final String lastCategory;

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
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black, fontSize: 22),
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
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              const Tab(
                  child: Text("전체글", style: TextStyle(color: Colors.black))),
              const Tab(
                  child: Text("자유", style: TextStyle(color: Colors.black))),
              const Tab(
                  child: Text("질문", style: TextStyle(color: Colors.black))),
              Tab(
                  child: Text(lastCategory,
                      style: const TextStyle(color: Colors.black))),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required this.title,
    required this.content,
    required this.time,
    required this.upvote,
    required this.replies,
  }) : super(key: key);

  final String title;
  final String content;
  final String time;
  final String upvote;
  final String replies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 14)),
            ],
            // ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(content,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('익명 - $time',
                  style: const TextStyle(fontSize: 11, color: Colors.grey)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                      width: 20,
                      child: Icon(Icons.thumb_up_outlined,
                          size: 12, color: Colors.grey)),
                  SizedBox(
                      width: 20,
                      child: Text(upvote,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.grey))),
                  const SizedBox(
                      width: 20,
                      child: Icon(Icons.chat_bubble_outline,
                          size: 12, color: Colors.grey)),
                  Text(replies,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

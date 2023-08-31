import 'package:flutter/material.dart';
import 'package:mingle/widget/content.dart';

class ListContents extends StatelessWidget {
  const ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: const Column(
        children: [
          MainContent(
            title: "홍린이 침사추이쪽 감성카페 추천 부탁:))",
            content: "그냥 혼자 기분전환할 겸 한두 번씩 다니고 싶은데 아는 카페있으면 추...",
            replies: "0",
            time: "50분 전",
            upvote: "0",
          ),
          MainContent(
            title: "홍콩 보니까 아득하다",
            content: "애들 스토리 하나 둘 보니까",
            replies: "0",
            time: "2시간 전",
            upvote: "0",
          ),
          MainContent(
            title: "홍콩 코노",
            content: "노래부르는 거 좋아하는데 홍콩에는 코인노래방 같은거 있어?? 스트레...",
            replies: "3",
            time: "7시간 전",
            upvote: "0",
          ),
          MainContent(
            title: "다들 외로울때 어떻게 해",
            content: "타지에서 혼자 지내니 외로울때가 많고 한국 들어가고 싶어",
            replies: "9",
            time: "10시간 전",
            upvote: "0",
          ),
        ],
      ),
    );
  }
}

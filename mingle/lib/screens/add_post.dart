import 'package:flutter/material.dart';
import 'package:mingle/widget/custom_textfield.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    bool changeColor = true;

    final TextEditingController headingController = TextEditingController();
    final TextEditingController contentController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        titleSpacing: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("게시글 작성", style: TextStyle(color: Colors.grey, fontSize: 15))
          ],
        ),
        actions: [
          TextButton(
            child: const Text("게시", style: TextStyle(color: Colors.grey)),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text("게시판 이름", style: TextStyle(fontSize: 15)),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: headingController,
              hintText: '제목을 입력하세요',
            ),
            const Divider(height: 1),
            Expanded(
              child: CustomTextField(
                controller: contentController,
                hintText:
                    "밍글에서 나누고 싶은 이야기가 있나요? \n\n   - 운영규칙을 위반하는 게시글은 삭제 될 수 있습니다. \n   - 불쾌감을 줄 수 있는 내용은 신고로 제재될 수 있습니다. \n   - 더 상세한 내용은 밍글 가이드라인을 참고하세요.",
                maxLines: 20,
                hintTextSize: 14,
              ),
            ),
            const Divider(height: 1)
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.image_outlined),
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  changeColor = !changeColor;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade100,
                  elevation: 0,
                  foregroundColor: Colors.orange,
                  disabledBackgroundColor: Colors.grey.shade100),
              child:
                  const Row(children: [Text("익명"), Icon(Icons.check_outlined)]),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mingle/widget/title.dart';
import 'package:mingle/widget/contents.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  final List<String> imagesList = [
    'assets/images/first.jpeg',
    'assets/images/second.jpeg',
    'assets/images/third.jpeg',
    'assets/images/fourth.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Colors.black),
          onPressed: () => {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () => {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  height: 200,
                  onPageChanged: (index, reason) => currentIndex = index),
              items: imagesList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(0),
                      child: Card(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 20.0,
                        ),
                        elevation: 0,
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? Colors.orange
                        : const Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '소식 바로 보기',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('학생회', style: TextStyle(fontSize: 14)),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('밍글소식', style: TextStyle(fontSize: 14)),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ListTitle(title: "지금 광장에서는"),
            const ListContents(),
            const SizedBox(height: 20),
            const ListTitle(title: "지금 잔디밭에서는"),
            const ListContents(),
            const SizedBox(height: 20),
            const ListTitle(title: "불타오르는 게시글"),
            const ListContents(),
          ],
        ),
      ),
    );
  }
}

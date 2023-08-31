import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 20)),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

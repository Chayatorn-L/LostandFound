import 'package:flutter/material.dart';
import 'package:flutter_main_project/Lost%20&%20Found/ItemSummary.dart';
import 'package:flutter_main_project/services/test3.dart';


class LFPage extends StatelessWidget {
  const LFPage({super.key});

  printItemInfo() async {
    List<dynamic> listLostItem = await CollectionService().getAllLostItemData();
    print(listLostItem);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1600),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child : Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text("${item.author} · ${item.postedOn}",
                              style: Theme.of(context).textTheme.caption),
                          const SizedBox(height: 8),
                        ],
                      )
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
                onTap: () {
                  printItemInfo();
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => const Itemsummary())); },
                )
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.imageUrl,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    title: "ของหาย1",
    author: "คนทำหาย1",
    imageUrl: "https://picsum.photos/id/1000/960/540",
    postedOn: "Yesterday",
  ),
  Article(
      title: "ของหาย2",
      imageUrl: "https://picsum.photos/id/1010/960/540",
      author: "คนทำหาย2",
      postedOn: "4 hours ago"),
  Article(
    title: "ของหาย3",
    author: "คนทำหาย3",
    imageUrl: "https://picsum.photos/id/1001/960/540",
    postedOn: "2 days ago",
  ),
];

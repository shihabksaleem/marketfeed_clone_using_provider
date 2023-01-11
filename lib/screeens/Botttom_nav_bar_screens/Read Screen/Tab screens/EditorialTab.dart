// ignore_for_file: file_names

import 'package:flutter/material.dart';

List<Map> editorialCardDataList = [
  {
    'imagePath': 'images/read tab images/market07.jpg',
    'publisherPhoto': 'images/AJAY AJITH.png',
    'publisherName': 'By Ajay Ajith',
    'newsDescription':
        'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
  },
  {
    'imagePath': 'images/read tab images/market06.jpg',
    'publisherPhoto': 'images/AJAY AJITH.png',
    'publisherName': 'By Ajay Ajith',
    'newsDescription':
        'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
  },
  {
    'imagePath': 'images/read tab images/market09.jpg',
    'publisherPhoto': 'images/AJAY AJITH.png',
    'publisherName': 'By Ajay Ajith',
    'newsDescription':
        'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
  }
];

// to reverse the list to the last added item on the top of the screen
List readEditorialCardDataListReversed =
    editorialCardDataList.reversed.toList();

class EditorialTab extends StatelessWidget {
  const EditorialTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 4),
        itemBuilder: (context, index) => ReadMarketTabRefacted(
              imagePath: readEditorialCardDataListReversed[index]['imagePath'],
              publisherPhoto: readEditorialCardDataListReversed[index]
                  ['publisherPhoto'],
              publisherName: readEditorialCardDataListReversed[index]
                  ['publisherName'],
              newsDescription: readEditorialCardDataListReversed[index]
                  ['newsDescription'],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 3,
            ),
        itemCount: readEditorialCardDataListReversed.length);
  }
}

class ReadMarketTabRefacted extends StatelessWidget {
  final String imagePath;
  final publisherPhoto;
  final publisherName;
  final newsDescription;

  const ReadMarketTabRefacted({
    super.key,
    required this.imagePath,
    required this.publisherPhoto,
    required this.publisherName,
    required this.newsDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                  ),
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 10, backgroundImage: AssetImage(publisherPhoto)),
                  SizedBox(width: 10),
                  Text(
                    publisherName,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                newsDescription,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '6 hours ago • 4 min read • 2 comments',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.bookmark_add_outlined, color: Colors.grey)
                    ]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

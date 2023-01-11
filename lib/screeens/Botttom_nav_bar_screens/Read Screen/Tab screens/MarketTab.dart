// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MarketTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> marketCardDataList = [
      {
        'imagePath': 'images/read tab images/market06.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'images/read tab images/market02.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'images/read tab images/market03.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'images/read tab images/market04.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'images/read tab images/market10.jpg',
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
        'imagePath': 'images/read tab images/market12.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'images/read tab images/market02.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      }
    ];

// to reverse the list to the last added item on the top of the screen
    List readMarketCardDataListReversed = marketCardDataList.reversed.toList();

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) => ReadMarketTabRefacted(
                    imagePath: readMarketCardDataListReversed[index]
                        ['imagePath'],
                    publisherPhoto: readMarketCardDataListReversed[index]
                        ['publisherPhoto'],
                    publisherName: readMarketCardDataListReversed[index]
                        ['publisherName'],
                    newsDescription: readMarketCardDataListReversed[index]
                        ['newsDescription'],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
              itemCount: readMarketCardDataListReversed.length),
        )
      ],
    );
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
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
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

// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/screeens/Botttom_nav_bar_screens/Signals_Screen/SignalsCard.dart';

class SignalsBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> signalsCardDataList = [
      {
        'imageVisibility': true,
        'cardHeading': 'Charts',
        'imagePath': 'images/read tab images/market01.jpg',
        'publisherPhoto': 'images/salman faris.png',
        'publisherName': 'By Salman',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': true,
        'cardHeading': 'Market Updates',
        'imagePath': 'images/read tab images/market02.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Update',
        'imagePath': '',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Update',
        'imagePath': '',
        'publisherPhoto': 'images/shareeque Shamsudheen.jpg',
        'publisherName': 'By Sharique',
        'newsDescription':
            'GST Council likely to provide tax relief to standlone petroleum refineries: Media reports',
      },
      {
        'imageVisibility': true,
        'cardHeading': 'Charts',
        'imagePath': 'images/read tab images/market03.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Updates',
        'imagePath': 'images/readEditorial image.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'UK Inflation inflation Rare Nov (YoY) at 10.7% vs 11.1% previous vs estimated of 10.9%.',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Updates',
        'imagePath': '',
        'publisherPhoto': 'images/Nihal.png',
        'publisherName': 'By Nilha',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
    ];
    // to reverse the list to the last added item on the top of the screen
    List signalsCardDataListReaversed = signalsCardDataList.reversed.toList();
    return ListView.builder(
        itemBuilder: (context, index) => SignalScreenCardRefactered(
              image: signalsCardDataListReaversed[index]['imageVisibility'],
              imagePath: signalsCardDataListReaversed[index]['imagePath'],
              publisherPhoto: signalsCardDataListReaversed[index]
                  ['publisherPhoto'],
              publisherName: signalsCardDataListReaversed[index]
                  ['publisherName'],
              newsDescription: signalsCardDataListReaversed[index]
                  ['newsDescription'],
              cardHeading: signalsCardDataListReaversed[index]['cardHeading'],
            ),
        itemCount: signalsCardDataListReaversed.length);
  }
}

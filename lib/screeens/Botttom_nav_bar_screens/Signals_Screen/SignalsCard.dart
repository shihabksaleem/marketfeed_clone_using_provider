import 'package:flutter/material.dart';

class SignalScreenCardRefactered extends StatelessWidget {
  final String imagePath;
  final publisherPhoto;
  final publisherName;
  final newsDescription;

  final bool image;
  final cardHeading;

  const SignalScreenCardRefactered({
    required this.cardHeading,
    required this.publisherPhoto,
    required this.publisherName,
    required this.newsDescription,
    this.imagePath = '',
    this.image = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(1, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardHeading,
                style: TextStyle(fontSize: 16, color: Color(0xFF4266c7)),
              ),
              SizedBox(height: 8),
              image
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                    )
                  : SizedBox(),
              Text(
                newsDescription,
                style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
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
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                '6 hours ago ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

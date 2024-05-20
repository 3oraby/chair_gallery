import 'package:flutter/material.dart';
import 'package:sell_products_app/items/item_details.dart';

class HomePageData {
  static const Color appBarColor = Colors.white;
  static const String appBarTitle = "our category";
  static const double appBarTitleSize = 30;
  static const Color appBarTitleColor = Colors.black;
  static const double appBarIconSize = 32;

  static const String nonFoundedDataExpression = "No Items Found";
  static const Color nonFoundedDataColor = Color.fromARGB(255, 231, 58, 5);

  static const List<String> buttonNames = [
    "button1",
    "button2",
    "button3",
    "button4",
  ];

  // the chairs which we will display details
  static const List<ItemDetails> chairsData = [
    ItemDetails(
      chairName: "chair1",
      imageName: "assets/chair1/side1.jpeg",
      nStars: 7,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair1/side1.jpeg",
        "assets/chair1/side2.jpeg",
        "assets/chair1/side3.jpeg",
        "assets/chair1/side4.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair2",
      imageName: "assets/chair2/side1.jpeg",
      nStars: 6,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair2/side1.jpeg",
        "assets/chair2/side2.jpeg",
        "assets/chair2/side3.jpeg",
        "assets/chair2/side4.jpeg",
        "assets/chair2/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair3",
      imageName: "assets/chair3/side1.jpeg",
      nStars: 2,
      otherPhotos: [
        "assets/chair3/side1.jpeg",
        "assets/chair3/side2.jpeg",
        "assets/chair3/side3.jpeg",
        "assets/chair3/side4.jpeg",
        "assets/chair3/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair4",
      imageName: "assets/chair4/side1.jpeg",
      nStars: 3,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair4/side1.jpeg",
        "assets/chair4/side2.jpeg",
        "assets/chair4/side3.jpeg",
        "assets/chair4/side4.jpeg",
        "assets/chair4/side5.jpeg",
        "assets/chair4/side6.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair5",
      imageName: "assets/chair5/side1.jpeg",
      nStars: 7,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair5/side1.jpeg",
        "assets/chair5/side2.jpeg",
        "assets/chair5/side3.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair6",
      imageName: "assets/chair6/side1.jpeg",
      nStars: 9,
      otherPhotos: [
        "assets/chair6/side1.jpeg",
        "assets/chair6/side2.jpeg",
        "assets/chair6/side3.jpeg",
        "assets/chair6/side4.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair7",
      imageName: "assets/chair7/side1.jpeg",
      nStars: 9,
      otherPhotos: [
        "assets/chair7/side1.jpeg",
        "assets/chair7/side2.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair8",
      imageName: "assets/chair8/side1.jpeg",
      nStars: 1,
      otherPhotos: [
        "assets/chair8/side1.jpeg",
        "assets/chair8/side2.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair9",
      imageName: "assets/chair1/side1.jpeg",
      nStars: 4,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair1/side1.jpeg",
        "assets/chair1/side2.jpeg",
        "assets/chair1/side3.jpeg",
        "assets/chair1/side4.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair10",
      imageName: "assets/chair2/side1.jpeg",
      nStars: 6,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair2/side1.jpeg",
        "assets/chair2/side2.jpeg",
        "assets/chair2/side3.jpeg",
        "assets/chair2/side4.jpeg",
        "assets/chair2/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair11",
      imageName: "assets/chair3/side1.jpeg",
      nStars: 2,
      otherPhotos: [
        "assets/chair3/side1.jpeg",
        "assets/chair3/side2.jpeg",
        "assets/chair3/side3.jpeg",
        "assets/chair3/side4.jpeg",
        "assets/chair3/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair12",
      imageName: "assets/chair4/side1.jpeg",
      nStars: 3,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair4/side1.jpeg",
        "assets/chair4/side2.jpeg",
        "assets/chair4/side3.jpeg",
        "assets/chair4/side4.jpeg",
        "assets/chair4/side5.jpeg",
        "assets/chair4/side6.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair13",
      imageName: "assets/chair7/side1.jpeg",
      nStars: 1,
      otherPhotos: [
        "assets/chair7/side1.jpeg",
        "assets/chair7/side2.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair14",
      imageName: "assets/chair5/side1.jpeg",
      nStars: 7,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair5/side1.jpeg",
        "assets/chair5/side2.jpeg",
        "assets/chair5/side3.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair15",
      imageName: "assets/chair6/side1.jpeg",
      nStars: 9,
      otherPhotos: [
        "assets/chair6/side1.jpeg",
        "assets/chair6/side2.jpeg",
        "assets/chair6/side3.jpeg",
        "assets/chair6/side4.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair16",
      imageName: "assets/chair7/side1.jpeg",
      nStars: 9,
      otherPhotos: [
        "assets/chair7/side1.jpeg",
        "assets/chair7/side2.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair17",
      imageName: "assets/chair8/side1.jpeg",
      nStars: 1,
      otherPhotos: [
        "assets/chair8/side1.jpeg",
        "assets/chair8/side2.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair18",
      imageName: "assets/chair2/side1.jpeg",
      nStars: 6,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair2/side1.jpeg",
        "assets/chair2/side2.jpeg",
        "assets/chair2/side3.jpeg",
        "assets/chair2/side4.jpeg",
        "assets/chair2/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair19",
      imageName: "assets/chair3/side1.jpeg",
      nStars: 4,
      otherPhotos: [
        "assets/chair3/side1.jpeg",
        "assets/chair3/side2.jpeg",
        "assets/chair3/side3.jpeg",
        "assets/chair3/side4.jpeg",
        "assets/chair3/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair20",
      imageName: "assets/chair1/side1.jpeg",
      nStars: 9,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair1/side1.jpeg",
        "assets/chair1/side2.jpeg",
        "assets/chair1/side3.jpeg",
        "assets/chair1/side4.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair21",
      imageName: "assets/chair2/side1.jpeg",
      nStars: 6,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair2/side1.jpeg",
        "assets/chair2/side2.jpeg",
        "assets/chair2/side3.jpeg",
        "assets/chair2/side4.jpeg",
        "assets/chair2/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair22",
      imageName: "assets/chair3/side1.jpeg",
      nStars: 4,
      otherPhotos: [
        "assets/chair3/side1.jpeg",
        "assets/chair3/side2.jpeg",
        "assets/chair3/side3.jpeg",
        "assets/chair3/side4.jpeg",
        "assets/chair3/side5.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair23",
      imageName: "assets/chair4/side1.jpeg",
      nStars: 3,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair4/side1.jpeg",
        "assets/chair4/side2.jpeg",
        "assets/chair4/side3.jpeg",
        "assets/chair4/side4.jpeg",
        "assets/chair4/side5.jpeg",
        "assets/chair4/side6.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair24",
      imageName: "assets/chair5/side1.jpeg",
      nStars: 7,
      description: "DocsDocsDocsDocsDocs",
      otherPhotos: [
        "assets/chair5/side1.jpeg",
        "assets/chair5/side2.jpeg",
        "assets/chair5/side3.jpeg",
      ],
    ),
    ItemDetails(
      chairName: "chair25",
      imageName: "assets/chair1/side1.jpeg",
      nStars: 9,
      description:
          "this is the most seller chair in our category, it is very famous",
      otherPhotos: [
        "assets/chair1/side1.jpeg",
        "assets/chair1/side2.jpeg",
        "assets/chair1/side3.jpeg",
        "assets/chair1/side4.jpeg",
      ],
    ),
  ];
}

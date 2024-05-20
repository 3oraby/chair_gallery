import 'package:flutter/material.dart';

class ItemDetails {
  const ItemDetails({
    required this.imageName,
    required this.chairName,
    this.description = "the chair is comfortable",
    this.nStars = 5,
    this.otherPhotos = const [],
  });

  final String imageName;
  final String chairName;
  final List otherPhotos;
  final String description;
  final int nStars;

  // ignore: non_constant_identifier_names
  void moveToPage(BuildContext context, int delayTime, Widget NextPage) {
    // to close the keyboard of the phone after click in another item
    FocusScope.of(context).unfocus();
    // wait the keyboard to close to avoid render
    Future.delayed(
      Duration(milliseconds: delayTime),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NextPage,
        ),
      ),
    );
  }
}

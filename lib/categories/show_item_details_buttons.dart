import 'package:flutter/material.dart';

class ShowItemDetailsButton extends StatelessWidget {
  const ShowItemDetailsButton({
    super.key,
    required this.showName,
    required this.colorButton,
  });

  final String showName;
  final Color colorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            colorButton,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Text(
          showName,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

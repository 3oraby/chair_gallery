import 'package:flutter/material.dart';
import 'package:sell_products_app/constant_data/home_page_buttons_data.dart';

class HomePageButtons extends StatefulWidget {
  final List<String> buttonNames;
  final int initialSelection;

  const HomePageButtons({
    super.key,
    required this.buttonNames,
    this.initialSelection = 0,
  });

  @override
  State<HomePageButtons> createState() => _HomePageButtonsState();
}

class _HomePageButtonsState extends State<HomePageButtons> {
  int selectedButtonIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedButtonIndex = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        widget.buttonNames.length,
        (index) => TextButton(
          onPressed: () {
            setState(() {
              selectedButtonIndex = index;
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: selectedButtonIndex == index
                ? HomePageButtonsData.activeButtonsColor
                : HomePageButtonsData.normalButtonsColor,
          ),
          child: Text(
            widget.buttonNames[index],
            style: TextStyle(
              color: selectedButtonIndex == index
                  ? HomePageButtonsData.activeTextColor
                  : HomePageButtonsData.normalTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

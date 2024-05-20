import 'package:flutter/material.dart';
import 'package:sell_products_app/constant_data/search_bar_data.dart';

class SearchBarCategory extends StatefulWidget {
  const SearchBarCategory({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<String> onChanged;

  @override
  State<SearchBarCategory> createState() => _SearchBarCategoryState();
}

class _SearchBarCategoryState extends State<SearchBarCategory> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: TextField(
        controller: searchController,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: SearchBarData.fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          hintText: SearchBarData.hintText,
          prefixIcon: IconButton(
            onPressed: () {
              // close the keyboard and make search
              FocusScope.of(context).unfocus();
            },
            icon: const Icon(Icons.search),
            iconSize: SearchBarData.iconsSize,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                searchController.clear();
                // make the textfield empty to show the all list view again
                widget.onChanged("");
                FocusScope.of(context).unfocus(); // close the keyboard
              });
            },
            icon: const Icon(Icons.cancel),
            iconSize: SearchBarData.iconsSize,
          ),
          prefixIconColor: SearchBarData.iconsColor,
          suffixIconColor: SearchBarData.iconsColor,
        ),
      ),
    );
  }
}

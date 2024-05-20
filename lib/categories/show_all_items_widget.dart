import 'package:flutter/material.dart';
import 'package:sell_products_app/categories/main_item_widget.dart';
import 'package:sell_products_app/items/item_details.dart';

class ShowAllItemsWidget extends StatefulWidget {
  const ShowAllItemsWidget({
    super.key,
    required this.displayList,
  });

  final List<ItemDetails> displayList;

  @override
  State<ShowAllItemsWidget> createState() => _ShowAllItemsWidgetState();
}

class _ShowAllItemsWidgetState extends State<ShowAllItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        padding: const EdgeInsets.all(16),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.displayList.length,
        itemBuilder: (context, index) {
          return MainItemWidget(
            chairItem: widget.displayList[index],
          );
        });
  }
}

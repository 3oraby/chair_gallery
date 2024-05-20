import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sell_products_app/constant_data/main_item_data.dart';
import 'package:sell_products_app/items/item_details.dart';
import 'package:sell_products_app/pages/show_item_details.dart';
import 'package:sell_products_app/providers/favorite_provider.dart';

class MainItemWidget extends StatelessWidget {
  const MainItemWidget({
    super.key,
    required this.chairItem,
  });
  final ItemDetails chairItem;

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Container(
      decoration: BoxDecoration(
        color: MainItemWidgetData.itemColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          chairItem.moveToPage(
            context,
            300, // delay in millisecond
            ShowItemDetailsPage( // next page
              itemDetails: chairItem,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 160,
              height: 160,
              margin: const EdgeInsets.only(top: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  chairItem.imageName,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chairItem.chairName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      favoriteProvider.toggleFavorites(chairItem);
                    },
                    icon: Icon(
                      favoriteProvider.isExist(chairItem)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 30,
                      color: favoriteProvider.isExist(chairItem)
                          ? MainItemWidgetData.favoriteIconColor
                          : MainItemWidgetData.normalIconColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

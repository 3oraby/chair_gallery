import 'package:flutter/material.dart';
import 'package:sell_products_app/constant_data/favorite_page_data.dart';
import 'package:sell_products_app/items/item_details.dart';
import 'package:sell_products_app/pages/show_item_details.dart';
import 'package:sell_products_app/providers/favorite_provider.dart';

class ShowFavoriteItems extends StatelessWidget {
  const ShowFavoriteItems({
    super.key,
    required this.favoritesList,
    required this.favoriteProvider,
  });
  final List<ItemDetails> favoritesList;
  final FavoriteProvider favoriteProvider;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoritesList.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: ListTile(
          tileColor: FavoritesPageData.listTileColor,
          splashColor: FavoritesPageData.listTileSplashColor,
          onTap: () {
            favoritesList[index].moveToPage(
              context,
              200, // delay in millisecond
              ShowItemDetailsPage(
                // next page
                itemDetails: favoritesList[index],
              ),
            );
          },
          leading: SizedBox(
            width: 60,
            child: Image.asset(
              favoritesList[index].imageName,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            favoritesList[index].chairName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.restore_from_trash,
              size: 30,
              color: FavoritesPageData.iconColor,
            ),
            onPressed: () {
              favoriteProvider.toggleFavorites(favoritesList[index]);
            },
          ),
        ),
      ),
    );
  }
}

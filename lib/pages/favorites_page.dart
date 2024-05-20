import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sell_products_app/categories/show_favorite_items.dart';
import 'package:sell_products_app/constant_data/favorite_page_data.dart';
import 'package:sell_products_app/items/item_details.dart';
import 'package:sell_products_app/providers/favorite_provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final List<ItemDetails> favoritesList = favoriteProvider.getFavorites;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorites(${favoritesList.length})",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: favoritesList.isEmpty
          ? const Center(
              child: Text(
                FavoritesPageData.nonFoundedDataExpression,
                style: TextStyle(
                  fontSize: FavoritesPageData.nonFoundedDataSize,
                  color: FavoritesPageData.nonFoundedDataColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : ShowFavoriteItems(
              favoritesList: favoritesList,
              favoriteProvider: favoriteProvider,
            ),
    );
  }
}

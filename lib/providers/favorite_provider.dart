import 'package:flutter/material.dart';
import 'package:sell_products_app/items/item_details.dart';

class FavoriteProvider extends ChangeNotifier {
  List<ItemDetails> favorites = [];  
  List<ItemDetails> get getFavorites => favorites;

  // to add or remove the chair to favorites 
  void toggleFavorites(ItemDetails chair){
    bool isExist = favorites.contains(chair);
    if (isExist) {
      favorites.remove(chair);
    } else {
      favorites.add(chair);
    }
    notifyListeners();
  }
  bool isExist(chair) => favorites.contains(chair); 
}

import 'package:flutter/material.dart';
import 'package:sell_products_app/categories/home_page_buttons.dart';
import 'package:sell_products_app/categories/search_bar.dart';
import 'package:sell_products_app/categories/show_all_items_widget.dart';
import 'package:sell_products_app/constant_data/home_page_data.dart';
import 'package:sell_products_app/items/item_details.dart';
import 'package:sell_products_app/pages/favorites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemDetails> displayList = [];

  @override
  void initState() {
    super.initState();
    displayList = List.from(HomePageData.chairsData);
  }

  void updateDisplayList(String searchText) {
    setState(() {
      displayList = HomePageData.chairsData
          .where((item) =>
              item.chairName.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HomePageData.appBarColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          HomePageData.appBarTitle,
          style: TextStyle(
            fontSize: HomePageData.appBarTitleSize,
            fontWeight: FontWeight.bold,
            color: HomePageData.appBarTitleColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritesPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite_border,
              size: HomePageData.appBarIconSize,
            ),
          ),
        ], 
      ),
      body: ListView(
        children: [
          SearchBarCategory(
            onChanged: updateDisplayList,
          ),
          const HomePageButtons(
            buttonNames: HomePageData.buttonNames,
          ),
          displayList.isEmpty
              ? const Column(
                  children: [
                    SizedBox(height: 300),
                    Center(
                      child: Text(
                        HomePageData.nonFoundedDataExpression,
                        style: TextStyle(
                          color: HomePageData.nonFoundedDataColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              : ShowAllItemsWidget(displayList: displayList),
        ],
      ),
    );
  }
}

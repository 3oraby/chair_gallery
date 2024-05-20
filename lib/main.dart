import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sell_products_app/pages/home_page.dart';
import 'package:sell_products_app/providers/favorite_provider.dart';

void main() {
  runApp(const MainApp());
} 

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

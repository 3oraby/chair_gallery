import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sell_products_app/categories/show_item_details_buttons.dart';
import 'package:sell_products_app/constant_data/show_item_details_data.dart';
import 'package:sell_products_app/items/item_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShowItemDetailsPage extends StatefulWidget {
  const ShowItemDetailsPage({
    super.key,
    required this.itemDetails,
  });
  final ItemDetails itemDetails;

  @override
  State<ShowItemDetailsPage> createState() => _ShowItemDetailsPageState();
}

class _ShowItemDetailsPageState extends State<ShowItemDetailsPage> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShowItemDetailsData.bodyColor,
      appBar: AppBar(
        backgroundColor: ShowItemDetailsData.appBarColor,
        title: Text(
          "${widget.itemDetails.chairName} details",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: CarouselSlider.builder(
                    carouselController: carouselController,
                    itemCount: widget.itemDetails.otherPhotos.length,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    itemBuilder: (context, index, realIndex) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              widget.itemDetails.otherPhotos[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        carouselController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: ShowItemDetailsData.controllerColor,
                      ),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: widget.itemDetails.otherPhotos.length,
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: ShowItemDetailsData.activeDotColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        carouselController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 50,
                        color: ShowItemDetailsData.controllerColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Text(
              widget.itemDetails.chairName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              "${widget.itemDetails.nStars} Stars",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.itemDetails.description,
              style: const TextStyle(
                  fontSize: 25,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w700),
              maxLines: 2,
            ),
          ),
          const ShowItemDetailsButton(
            showName: "Add To Cart",
            colorButton: Colors.amberAccent,
          ),
          const ShowItemDetailsButton(
            showName: "Buy Now",
            colorButton: Color.fromARGB(255, 226, 113, 48),
          ),
        ],
      ),
    );
  }
}

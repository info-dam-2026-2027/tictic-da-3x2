import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';
import 'package:tictic_info_da/styles/others.dart';
import 'package:tictic_info_da/styles/sizes.dart';
import 'package:tictic_info_da/styles/texts.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // Déclarer un tableau
  final _items = ['Text 1', 'Text 2', 'Text 3', 'Text 4'];

  // Déclarer le controller du PageView
  final PageController controller = PageController();

  // Déclarer l'index actuel pour les lignes
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingHorizontal),
      child: Column(
        children: [
          SizedBox(
            height: kCarouselHeight,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemCount: _items.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
                  child: Center(
                    child: Text(
                      _items[i],
                      style: kCarouselTextStyle,
                    ),
                  ),
                );
              },
              onPageChanged: (i) {
                setState(() {
                  _currentIndex = i;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontalL),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < _items.length; i++)
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      controller.animateToPage(
                        i,
                        duration: Duration(seconds: kDurationCarousel),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      height: kLineHeight,
                      width: (MediaQuery.of(context).size.width / _items.length) - (kPaddingHorizontalL * 2),
                      decoration: BoxDecoration(
                        color: _currentIndex == i ? kDarkGreen : kWhite,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
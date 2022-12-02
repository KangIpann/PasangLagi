import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatelessWidget {
  HomeCarousel({Key? key}) : super(key: key);

  final itemImage = [
    Image.asset("assets/carousel/crsl_one.png"),
    Image.asset("assets/carousel/crsl_two.png"),
    Image.asset("assets/carousel/crsl_three.png"),
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 20),
      child: CarouselSlider(items: itemImage, options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),),
    );
  }
}
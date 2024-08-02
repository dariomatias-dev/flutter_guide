import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjectShowcaseCarouselWidget extends StatelessWidget {
  const ProjectShowcaseCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayInterval: const Duration(
          seconds: 4,
        ),
        viewportFraction: 1.0,
      ),
      items: List.generate(5, (index) {
        return ClipRRect(
          child: Image.asset(
            'assets/images/nature/image_${index + 1}.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

const color = Colors.blue;
const leftDotColor = color;
const rightDotColor = Colors.red;
const size = 32.0;

final loaders = <Widget>[
  LoadingAnimationWidget.bouncingBall(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.discreteCircle(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.dotsTriangle(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.fallingDot(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.flickr(
    leftDotColor: leftDotColor,
    rightDotColor: rightDotColor,
    size: size,
  ),
  LoadingAnimationWidget.fourRotatingDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.halfTriangleDot(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.hexagonDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.horizontalRotatingDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.inkDrop(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.newtonCradle(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.prograssiveDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.staggeredDotsWave(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.stretchedDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.threeArchedCircle(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.threeRotatingDots(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.twistingDots(
    leftDotColor: leftDotColor,
    rightDotColor: rightDotColor,
    size: size,
  ),
  LoadingAnimationWidget.twoRotatingArc(
    color: color,
    size: size,
  ),
  LoadingAnimationWidget.waveDots(
    color: color,
    size: size,
  ),
];

class LoadingAnimationWidgetSample extends StatelessWidget {
  const LoadingAnimationWidgetSample({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = (MediaQuery.sizeOf(context).width / 100).floor();

    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
          ),
          itemCount: loaders.length,
          itemBuilder: (context, index) {
            return Center(
              child: loaders[index],
            );
          },
        ),
      ),
    );
  }
}

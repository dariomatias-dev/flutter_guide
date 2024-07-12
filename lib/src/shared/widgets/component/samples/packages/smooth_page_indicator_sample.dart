import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final pages = List.generate(10, (index) {
  return Container(
    height: 200.0,
    margin: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Center(
      child: Text(
        'Item ${index + 1}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
});

class IndicatorEffectModel {
  const IndicatorEffectModel({
    required this.title,
    required this.effect,
  });

  final String title;
  final IndicatorEffect effect;
}

final dotColor = Colors.grey.shade300;
final activeDotColor = Colors.blue.shade400;
const dotHeight = 12.0;
const dotWidth = 12.0;

final smoothPageIndicators = <IndicatorEffectModel>[
  IndicatorEffectModel(
    title: 'Worm',
    effect: WormEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Worm style = WormStyle.thin',
    effect: WormEffect(
      type: WormType.thin,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Worm style = WormStyle.underground',
    effect: WormEffect(
      type: WormType.thinUnderground,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Worm style = WormStyle.thinUnderground',
    effect: WormEffect(
      type: WormType.underground,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Expanding Dots',
    effect: ExpandingDotsEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Jumping dot',
    effect: JumpingDotEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Jumping dot with vertical offset',
    effect: JumpingDotEffect(
      verticalOffset: 5.0,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Scrolling Dots',
    effect: ScrollingDotsEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Slide',
    effect: SlideEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Slide style = SlideStyle.slideUnder',
    effect: SlideEffect(
      type: SlideType.slideUnder,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Scale',
    effect: ScaleEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Swap',
    effect: SwapEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Swap type = SwapType.yRotation',
    effect: SwapEffect(
      type: SwapType.yRotation,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Swap type = SwapType.zRotation',
    effect: SwapEffect(
      type: SwapType.zRotation,
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
  IndicatorEffectModel(
    title: 'Color Transition',
    effect: ColorTransitionEffect(
      dotColor: dotColor,
      activeDotColor: Colors.blue.shade400,
      dotHeight: dotHeight,
      dotWidth: dotWidth,
    ),
  ),
];

class SmoothPageIndicatorSample extends StatefulWidget {
  const SmoothPageIndicatorSample({super.key});

  @override
  State<SmoothPageIndicatorSample> createState() =>
      _SmoothPageIndicatorSampleState();
}

class _SmoothPageIndicatorSampleState extends State<SmoothPageIndicatorSample> {
  final _pageViewController = PageController(
    viewportFraction: 0.8,
    keepPage: true,
  );

  @override
  void dispose() {
    _pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200.0,
              child: PageView.builder(
                controller: _pageViewController,
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  scrollbars: false,
                ),
                child: ListView.builder(
                  itemCount: smoothPageIndicators.length,
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  itemBuilder: (context, index) {
                    final smoothPageIndicator = smoothPageIndicators[index];

                    return Column(
                      children: <Widget>[
                        Text(
                          smoothPageIndicator.title,
                        ),
                        const SizedBox(height: 6.0),
                        SmoothPageIndicator(
                          controller: _pageViewController,
                          count: pages.length,
                          effect: smoothPageIndicator.effect,
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

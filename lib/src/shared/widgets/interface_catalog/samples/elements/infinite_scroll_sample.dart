import 'dart:math';

import 'package:flutter/material.dart';

typedef LoadDatatype = Future<List<Widget>> Function(
  int pageKey, {
  Axis scrollDirection,
});

final random = Random();

class InfiniteScrollSample extends StatefulWidget {
  const InfiniteScrollSample({super.key});

  @override
  State<InfiniteScrollSample> createState() => _InfiniteScrollSampleState();
}

class _InfiniteScrollSampleState extends State<InfiniteScrollSample> {
  final _controller = InfiniteScrollController();

  void navigateTo(
    Widget screen,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  Future<List<Widget>> _loadData(
    int pageKey, {
    Axis scrollDirection = Axis.vertical,
  }) async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    _controller.isListEnd = random.nextInt(4) == 0;

    final isVertical = scrollDirection == Axis.vertical;

    return List.generate(isVertical ? 10 : 6, (index) {
      return Container(
        width: isVertical ? null : MediaQuery.sizeOf(context).width * 0.6,
        height: 100.0,
        color: Color.fromARGB(
          255,
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                navigateTo(
                  InfiniteListingVerticallyScreen(
                    controller: _controller,
                    loadData: _loadData,
                  ),
                );
              },
              child: const Text('Show Infinite Listing Vertically'),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                navigateTo(
                  InfiniteListingHorizontallyScreen(
                    controller: _controller,
                    loadData: _loadData,
                  ),
                );
              },
              child: const Text('Show Infinite Listing Horizontally'),
            ),
          ],
        ),
      ),
    );
  }
}

class InfiniteListingVerticallyScreen extends StatelessWidget {
  const InfiniteListingVerticallyScreen({
    super.key,
    required this.controller,
    required this.loadData,
  });

  final InfiniteScrollController controller;
  final LoadDatatype loadData;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).brightness == Brightness.light
          ? ThemeData.light()
          : ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
        ),
        body: InfiniteScrollWidget(
          controller: controller,
          loadData: (pageKey) {
            return loadData(
              pageKey,
            );
          },
        ),
      ),
    );
  }
}

class InfiniteListingHorizontallyScreen extends StatelessWidget {
  const InfiniteListingHorizontallyScreen({
    super.key,
    required this.controller,
    required this.loadData,
  });

  final InfiniteScrollController controller;
  final LoadDatatype loadData;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).brightness == Brightness.light
          ? ThemeData.light()
          : ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            height: 100.0,
            child: InfiniteScrollWidget(
              controller: controller,
              scrollDirection: Axis.horizontal,
              loadData: (pageKey) {
                return loadData(
                  pageKey,
                  scrollDirection: Axis.horizontal,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class InfiniteScrollController extends ValueNotifier<bool> {
  InfiniteScrollController() : super(false);

  bool _isListEnd = false;

  bool get isListEnd => _isListEnd;

  set isListEnd(bool value) {
    _isListEnd = value;

    notifyListeners();
  }
}

class InfiniteScrollWidget extends StatefulWidget {
  const InfiniteScrollWidget({
    super.key,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.loadingElement,
    required this.loadData,
  });

  final InfiniteScrollController? controller;
  final Axis scrollDirection;
  final Widget? loadingElement;
  final Future<List<Widget>> Function(
    int pageKey,
  ) loadData;

  @override
  State<InfiniteScrollWidget> createState() => _InfiniteScrollWidgetState();
}

class _InfiniteScrollWidgetState extends State<InfiniteScrollWidget> {
  int _pageKey = 0;
  bool _isLoading = false;
  bool _isListEnd = false;

  final _scrollController = ScrollController();
  final _elements = [];

  void _onScroll() {
    if (!_isListEnd && !_isLoading && _scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        _addElements();
      }
    }
  }

  // Elements
  Future<void> _addElements() async {
    _addLoadingElement();
    _updateIsLoading();

    final newElements = await widget.loadData(_pageKey);
    _pageKey++;

    _removeLoadingElement();
    _elements.addAll(newElements);

    _updateIsLoading();
  }

  // Loading Element
  void _addLoadingElement() {
    _elements.add(
      widget.loadingElement ??
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
              ],
            ),
          ),
    );
  }

  void _removeLoadingElement() {
    _elements.removeLast();
  }

  // IsLoading
  void _updateIsLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    widget.controller?.addListener(() {
      if (widget.controller?.isListEnd ?? false) {
        _isListEnd = !_isListEnd;
      }
    });

    _addElements();
    _scrollController.addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
      ),
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: widget.scrollDirection,
        padding: EdgeInsets.zero,
        itemCount: _elements.length,
        itemBuilder: (context, index) {
          return _elements[index];
        },
      ),
    );
  }
}

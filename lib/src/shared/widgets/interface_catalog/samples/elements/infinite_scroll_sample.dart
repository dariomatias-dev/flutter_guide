import 'dart:math';

import 'package:flutter/material.dart';

typedef LoadDatatype = Future<List<Color>> Function(
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

  Future<List<Color>> _loadData(
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
      return Color.fromARGB(
        255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
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
          loadData: loadData,
          itemBuilder: (value) {
            return Container(
              height: 100.0,
              color: value,
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
              itemBuilder: (value) {
                return Container(
                  height: 100.0,
                  color: value,
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

class InfiniteScrollWidget<T> extends StatefulWidget {
  const InfiniteScrollWidget({
    super.key,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.padding,
    this.loadingWidget,
    required this.loadData,
    this.separatorBuilder,
    required this.itemBuilder,
  });

  final InfiniteScrollController? controller;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final Widget? loadingWidget;
  final Future<List<T>> Function(
    int pageKey,
  ) loadData;
  final Widget Function(
    BuildContext context,
    int index,
  )? separatorBuilder;
  final Widget Function(
    T value,
  ) itemBuilder;

  @override
  State<InfiniteScrollWidget> createState() => _InfiniteScrollWidgetState();
}

class _InfiniteScrollWidgetState<T> extends State<InfiniteScrollWidget> {
  int _pageKey = 0;
  bool _isLoading = false;
  bool _isListEnd = false;

  final _scrollController = ScrollController();
  final _items = [];

  void _onScroll() {
    if (!_isListEnd && !_isLoading && _scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        _addItems();
      }
    }
  }

  // Items
  Future<void> _addItems() async {
    _addLoadingWidget();
    _updateIsLoading();

    final newItems = await widget.loadData(_pageKey);
    _pageKey++;

    _removeLoadingWidget();

    final items = _generateItems(newItems);
    _items.addAll(items);

    _updateIsLoading();
  }

  List<Widget> _generateItems(
    List<dynamic> newItems,
  ) {
    final items = <Widget>[];
    for (dynamic newItem in newItems) {
      items.add(
        widget.itemBuilder(newItem),
      );
    }

    return items;
  }

  // Loading Widget
  void _addLoadingWidget() {
    _items.add(
      widget.loadingWidget ??
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

  void _removeLoadingWidget() {
    _items.removeLast();
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

    _addItems();
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
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: widget.scrollDirection,
        padding: widget.padding,
        itemCount: _items.length,
        separatorBuilder: widget.separatorBuilder ??
            (context, index) {
              return Container();
            },
        itemBuilder: (context, index) {
          return _items[index];
        },
      ),
    );
  }
}

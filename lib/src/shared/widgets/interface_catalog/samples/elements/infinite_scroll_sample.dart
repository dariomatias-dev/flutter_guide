import 'package:flutter/material.dart';

class InfiniteScrollSample extends StatefulWidget {
  const InfiniteScrollSample({super.key});

  @override
  State<InfiniteScrollSample> createState() => _InfiniteScrollSampleState();
}

class _InfiniteScrollSampleState extends State<InfiniteScrollSample> {
  final _infiniteScrollController = InfiniteScrollController();
  static const maxItemsPerPage = 20;

  Future<List<Widget>> _loadData(
    int pageKey,
  ) async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    _infiniteScrollController.isListEnd = true;

    return List.generate(maxItemsPerPage, (index) {
      return ListTile(
        title: Text('Item ${maxItemsPerPage * pageKey + index + 1}'),
        trailing: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 12.0,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InfiniteScrollWidget(
        infiniteScrollController: _infiniteScrollController,
        loadData: _loadData,
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
    this.infiniteScrollController,
    this.loadingElement,
    required this.loadData,
  });

  final InfiniteScrollController? infiniteScrollController;
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
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
            ),
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
    widget.infiniteScrollController?.addListener(() {
      _isListEnd = !_isListEnd;
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
        padding: EdgeInsets.zero,
        itemCount: _elements.length,
        itemBuilder: (context, index) {
          return _elements[index];
        },
      ),
    );
  }
}

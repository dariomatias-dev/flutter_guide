import 'package:flutter/material.dart';

class InfiniteScrollSample extends StatefulWidget {
  const InfiniteScrollSample({super.key});

  @override
  State<InfiniteScrollSample> createState() => _InfiniteScrollSampleState();
}

class _InfiniteScrollSampleState extends State<InfiniteScrollSample> {
  bool _isLoading = false;
  final _scrollController = ScrollController();
  final _elements = [];

  void _onScroll() {
    if (!_isLoading && _scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        _addElements();
      }
    }
  }

  Future<void> _addElements() async {
    _addElementLoading();
    _updateIsLoading();

    await Future.delayed(
      const Duration(seconds: 1),
    );

    _removeElementLoading();

    _createElements();

    _updateIsLoading();
  }

  void _createElements() {
    _elements.addAll(
      List.generate(20, (index) {
        return ListTile(
          title: Text('Item ${_elements.length + index + 1}'),
        );
      }),
    );
  }

  void _addElementLoading() {
    _elements.add(
      const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12.0,
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

  void _removeElementLoading() {
    _elements.removeLast();
  }

  void _updateIsLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    _createElements();
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
    return Scaffold(
      body: ListView.builder(
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

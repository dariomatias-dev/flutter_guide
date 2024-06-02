import 'package:flutter/material.dart';

class InfiniteScrollSample extends StatefulWidget {
  const InfiniteScrollSample({super.key});

  @override
  State<InfiniteScrollSample> createState() => _InfiniteScrollSampleState();
}

class _InfiniteScrollSampleState extends State<InfiniteScrollSample> {
  bool _isLoading = false;
  final _scrollController = ScrollController();
  final _items = List.generate(20, (index) {
    return index;
  });

  void _onScroll() {
    if (!_isLoading && _scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        _addItems();
      }
    }
  }

  Future<void> _addItems() async {
    _updateIsLoading();

    await Future.delayed(
      const Duration(seconds: 1),
    );

    _items.addAll(
      List.generate(20, (index) {
        return index + _items.length;
      }),
    );

    _updateIsLoading();
  }

  void _updateIsLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.zero,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              },
            ),
          ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}

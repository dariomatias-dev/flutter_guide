import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class InfiniteScrollPaginationSample extends StatefulWidget {
  const InfiniteScrollPaginationSample({super.key});

  @override
  State<InfiniteScrollPaginationSample> createState() =>
      _InfiniteScrollPaginationSampleState();
}

class _InfiniteScrollPaginationSampleState
    extends State<InfiniteScrollPaginationSample> {
  int _page = 0;
  final _controller = PagingController(
    firstPageKey: 0,
  );
  int quantityOfItems = 0;
  static const _pageSize = 20;

  Future<void> _fecthNumberOfItems() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        final items = List.generate(_pageSize, (index) {
          quantityOfItems++;
          return quantityOfItems;
        });
        _page++;

        _controller.appendPage(items, _page);
      },
    );
  }

  @override
  void initState() {
    _controller.addPageRequestListener((pageKey) {
      _fecthNumberOfItems();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagedListView(
        pagingController: _controller,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return ListTile(
              title: Text('Item $item'),
            );
          },
        ),
      ),
    );
  }
}

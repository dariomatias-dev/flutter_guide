import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({
    super.key,
    required this.onChange,
  });

  final void Function(String value) onChange;

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  final _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: TextFormField(
        controller: _searchFieldController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).brightness == Brightness.light
              ? Colors.grey.shade200
              : FlutterGuideColors.darkNeutral200.withOpacity(0.8),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          hintText: "Widget...",
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: widget.onChange,
      ),
    );
  }
}

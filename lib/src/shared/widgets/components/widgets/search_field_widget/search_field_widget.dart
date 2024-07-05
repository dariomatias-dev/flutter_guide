import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

import 'package:flutter_guide/src/shared/widgets/components/widgets/search_field_widget/search_field_controller.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({
    super.key,
    required this.componentType,
    required this.onChange,
  });

  final ComponentType componentType;
  final void Function(String value) onChange;

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  final _controller = SearchFieldController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: TextFormField(
        controller: _controller.searchFieldController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).brightness == Brightness.light
              ? Colors.grey.shade300.withOpacity(0.8)
              : FlutterGuideColors.darkNeutral200.withOpacity(0.8),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.tertiary,
            size: 20.0,
          ),
          hintText:
              '${widget.componentType == ComponentType.widget ? 'Widget' : 'Package'}...',
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 14.0,
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

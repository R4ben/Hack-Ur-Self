import 'package:flutter/material.dart';

class BottomSheetPage extends Page {
  final Widget Function(ScrollController? controller) builder;
  final bool fixed;

  const BottomSheetPage({
    super.key,
    super.name,
    required this.builder,
    this.fixed = false,
  });
  @override
  Route createRoute(BuildContext context) {
    return ModalBottomSheetRoute(
      isScrollControlled: true,
      settings: this,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) {
        if (!fixed) {
          return DraggableScrollableSheet(
            builder: (_, scrollController) => builder(scrollController),
          );
        }
        return builder(null);
      },
    );
  }
}

import 'package:flutter/material.dart';

class Popover {
  static OverlayEntry? _entry;

  static void show({
    required BuildContext context,
    required GlobalKey targetKey,
    required Widget content,
    double verticalOffset = 8,
    double width = 200,
    VoidCallback? onDismiss,
  }) {
    dismiss(); // remove previous popover if any

    final targetContext = targetKey.currentContext;
    if (targetContext == null) {
      debugPrint("⚠️ targetKey context is null.");
      return;
    }

    final renderBox = targetContext.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.attached) {
      debugPrint("⚠️ RenderBox is not attached.");
      return;
    }

    final targetSize = renderBox.size;
    final targetOffset = renderBox.localToGlobal(Offset.zero);
    final screenWidth = MediaQuery.of(context).size.width;

    // Clamp left to screen
    double left = targetOffset.dx;
    if (left + width > screenWidth) {
      left = screenWidth - width - 8;
    }
    if (left < 8) {
      left = 8;
    }

    _entry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              GestureDetector(
                onTap: () => dismiss(onDismiss),
                behavior: HitTestBehavior.translucent,
                child: Container(color: const Color.fromARGB(83, 0, 0, 0)),
              ),
              Positioned(
                left: left,
                top: targetOffset.dy + targetSize.height + verticalOffset,
                width: width,
                child: Material(
                  elevation: 6,
                  borderRadius: BorderRadius.circular(12),
                  child: content,
                ),
              ),
            ],
          ),
    );

    Overlay.of(context).insert(_entry!);
  }

  static void dismiss([VoidCallback? onDismiss]) {
    _entry?.remove();
    _entry = null;
    onDismiss?.call();
  }
}

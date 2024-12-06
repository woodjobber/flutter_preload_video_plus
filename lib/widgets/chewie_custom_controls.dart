import 'package:cached_chewie_plus/cached_chewie_plus.dart';
import 'package:flutter/material.dart';

class OneThemeControls extends StatelessWidget {
  const OneThemeControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.iOS:
        return const MaterialControls();

      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return const MaterialDesktopControls();

      default:
        return const MaterialControls();
    }
  }
}

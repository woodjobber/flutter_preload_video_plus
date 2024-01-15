import 'package:cached_chewie_plus/cached_chewie_plus.dart';


class PreloadControllerItem {
  CachedVideoPlayerController videoPlayerController;
  ChewieController chewieController;
  bool willDisposed;
  bool disposed;
  bool isInitialized;
  bool isInitializing;
  bool shouldPlayAfterInitialized;
  PreloadControllerItem({
    required this.videoPlayerController,
    required this.chewieController,
    required this.willDisposed,
    required this.disposed,
    this.isInitialized = false,
    this.isInitializing = false,
    this.shouldPlayAfterInitialized = false,
  });

  PreloadControllerItem copySelfWith({
    CachedVideoPlayerController? controller,
    ChewieController? chewieController,
    bool? willDisposed,
    bool? disposed,
    bool? isInitialized,
    bool? isInitializing,
    bool? shouldPlayAfterInitialized,
  }) {
    final item = PreloadControllerItem(
      videoPlayerController: controller ?? this.videoPlayerController,
      chewieController: chewieController ?? this.chewieController,
      willDisposed: willDisposed ?? this.willDisposed,
      disposed: disposed ?? this.disposed,
      isInitialized: isInitialized ?? this.isInitialized,
      isInitializing: isInitializing ?? this.isInitializing,
      shouldPlayAfterInitialized:
          shouldPlayAfterInitialized ?? this.shouldPlayAfterInitialized,
    );
    this._weakCopyWith(
      controller: item.videoPlayerController,
      chewieController: item.chewieController,
      willDisposed: item.willDisposed,
      disposed: item.disposed,
      isInitialized: item.isInitialized,
      isInitializing: item.isInitializing,
      shouldPlayAfterInitialized: item.shouldPlayAfterInitialized,
    );
    return this;
  }

  PreloadControllerItem _weakCopyWith({
    CachedVideoPlayerController? controller,
    ChewieController? chewieController,
    bool? willDisposed,
    bool? disposed,
    bool? isInitialized,
    bool? isInitializing,
    bool? shouldPlayAfterInitialized,
  }) {
    if (controller != null) {
      this.videoPlayerController = controller;
    }
    if (chewieController != null) {
      this.chewieController = chewieController;
    }
    if (willDisposed != null) {
      this.willDisposed = willDisposed;
    }
    if (disposed != null) {
      this.disposed = disposed;
    }
    if (isInitialized != null) {
      this.isInitialized = isInitialized;
    }
    if (isInitializing != null) {
      this.isInitializing = isInitializing;
    }
    if (shouldPlayAfterInitialized != null) {
      this.shouldPlayAfterInitialized = shouldPlayAfterInitialized;
    }
    return this;
  }
}

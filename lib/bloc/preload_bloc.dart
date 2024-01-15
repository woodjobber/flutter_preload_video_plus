import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cached_chewie_plus/cached_chewie_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_preload_videos/bloc/preload_controller_item.dart';
import 'package:flutter_preload_videos/service/api_service.dart';
import 'package:flutter_preload_videos/core/constants.dart';
import 'package:flutter_preload_videos/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'preload_bloc.freezed.dart';
part 'preload_event.dart';
part 'preload_state.dart';

@injectable
@prod
class PreloadBloc extends Bloc<PreloadEvent, PreloadState> {
  PreloadBloc() : super(PreloadState.initial()) {
    on(_mapEventToState);
  }

  void _mapEventToState(PreloadEvent event, Emitter<PreloadState> emit) async {
    await event.map(
      setLoading: (e) {
        emit(state.copyWith(isLoading: true));
      },
      getVideosFromApi: (e) async {
        /// Fetch first 5 videos from api
        final List<String> _urls = await ApiService.getVideos();
        state.urls.addAll(_urls);

        /// Initialize 1st video
        await _initializeControllerAtIndex(0);

        /// Play 1st video
        _playControllerAtIndex(0);

        /// Initialize 2nd video
        await _initializeControllerAtIndex(1);

        /// Initialize 3nd video
        await _initializeControllerAtIndex(2);
        emit(state.copyWith(reloadCounter: state.reloadCounter + 1));
      },
      // initialize: (e) async* {},
      onVideoIndexChanged: (e) {
        /// Condition to fetch new videos
        final bool shouldFetch = (e.index + kPreloadLimit) % kNextLimit == 0 &&
            state.urls.length == e.index + kPreloadLimit;
        if (shouldFetch) {
          log('start fetch from: ${e.index}');
          createIsolate(e.index);
        }
        if (e.index == state.focusedIndex) return;
        final newState = state.copyWith(focusedIndex: e.index);

        /// Next / Prev video decider
        if (e.index > state.focusedIndex) {
          _playNext(e.index);
        } else {
          _playPrevious(e.index);
        }

        emit(newState);
      },
      updateUrls: (e) {
        /// Add new urls to current urls
        state.urls.addAll(e.urls);

        /// Initialize new url
        _initializeControllerAtIndex(state.focusedIndex + 1);

        emit(state.copyWith(
            reloadCounter: state.reloadCounter + 1, isLoading: false));
        log('🚀🚀🚀 NEW VIDEOS ADDED');
      },
    );
  }

  void _playNext(int index) {
    /// Stop [index - 1] controller
    _stopControllerAtIndex(index - 1);

    /// Stop [index - 2] controller
    _stopControllerAtIndex(index - 2);

    /// Dispose [index - 2] controller
    _disposeControllerAtIndex(index - 3);

    /// Play current video (already initialized)
    _playControllerAtIndex(index);

    /// Initialize [index + 1] controller
    _initializeControllerAtIndex(index + 1);

    ///Initialize [index + 2] controller
    _initializeControllerAtIndex(index + 2);
  }

  void _playPrevious(int index) {
    /// Stop [index + 1] controller
    _stopControllerAtIndex(index + 1);
    _stopControllerAtIndex(index + 2);

    /// Dispose [index + 2] controller
    _disposeControllerAtIndex(index + 3);

    /// Play current video (already initialized)
    _playControllerAtIndex(index);

    /// Initialize [index - 1] controller
    _initializeControllerAtIndex(index - 1);

    /// Initialize [index - 2] controller
    _initializeControllerAtIndex(index - 2);
  }

  Future _initializeControllerAtIndex(int index) async {
    if (state.urls.length > index && index >= 0) {
      final oldControllerItem = state.controllers[index];
      if (oldControllerItem != null &&
          oldControllerItem.isInitialized &&
          !oldControllerItem.disposed &&
          !oldControllerItem.willDisposed) {
        return;
      }

      /// Create new controller
      final CachedVideoPlayerController _controller =
          CachedVideoPlayerController.networkUrl(state.urls[index].toUri);
      final chewieController = ChewieController(
        videoPlayerController: _controller,
        autoPlay: false,
        looping: true,
        autoInitialize: false,
        showControls: true,
        showControlsOnInitialize: false,
        hideControlsTimer: Duration(seconds: 1),
      );

      final controllerItem = PreloadControllerItem(
        videoPlayerController: _controller,
        chewieController: chewieController,
        willDisposed: false,
        disposed: false,
        isInitializing: true,
      );

      /// Add to [controllers] list
      state.controllers[index] = controllerItem;

      /// Initialize
      await _controller.initialize();
      if (controllerItem.shouldPlayAfterInitialized &&
          state.focusedIndex == index &&
          !_controller.value.isPlaying) {
        log('🚀🚀🚀 Try Playing $index');
        _playControllerAtIndex(index);
      }
      controllerItem.copySelfWith(
        isInitialized: _controller.isInitialized,
        isInitializing: false,
        shouldPlayAfterInitialized: false,
      );

      log('🚀🚀🚀 INITIALIZED $index');
    }
  }

  void _playControllerAtIndex(int index) {
    if (state.urls.length > index && index >= 0) {
      /// Get controller at [index]
      final CachedVideoPlayerController _controller =
          state.controllers[index]!.videoPlayerController;
      state.controllers[index]!.copySelfWith(
        willDisposed: false,
        disposed: false,
        isInitialized: _controller.isInitialized,
        isInitializing: false,
      );

      _controller.setLooping(true);

      if (_controller.isInitialized) {
        state.controllers[index]!
            .copySelfWith(shouldPlayAfterInitialized: false);

        /// Play controller
        if (!_controller.value.isPlaying) {
          _controller.play();
        }

        log('🚀🚀🚀 PLAYING $index');
      } else {
        state.controllers[index]!
            .copySelfWith(shouldPlayAfterInitialized: true);
        log('🚀🚀🚀 isInitializing $index');
      }
    }
  }

  void _stopControllerAtIndex(int index) {
    if (state.urls.length > index && index >= 0) {
      /// Get controller at [index]
      final CachedVideoPlayerController _controller =
          state.controllers[index]!.videoPlayerController;

      /// Pause
      _controller.pause();

      /// Reset position to beginning
      _controller.seekTo(const Duration());

      log('🚀🚀🚀 STOPPED $index');
    }
  }

  void _disposeControllerAtIndex(int index) async {
    if (state.urls.length > index && index >= 0) {
      final controllerItem = state.controllers[index];

      /// Get controller at [index]
      final CachedVideoPlayerController? _controller =
          controllerItem?.videoPlayerController;
      controllerItem?.copySelfWith(willDisposed: true);

      /// Dispose controller
      await _controller?.dispose();
      controllerItem?.chewieController.dispose();
      controllerItem?.copySelfWith(disposed: true);

      if (controllerItem != null) {
        state.controllers.remove(controllerItem);
      }

      log('🚀🚀🚀 DISPOSED $index');
    }
  }
}

extension UriString on String {
  Uri get toUri => Uri.parse(this);
}

extension CachedVideoControllerExt on CachedVideoPlayerController {
  bool get isInitialized {
    return this.value.isInitialized;
  }
}

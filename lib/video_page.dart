import 'package:cached_chewie_plus/cached_chewie_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_preload_videos/bloc/preload_bloc.dart';
import 'package:flutter_preload_videos/scroll_physics/quicker_scroll_physics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class VideoPage extends StatelessWidget {
  const VideoPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: BlocBuilder<PreloadBloc, PreloadState>(
          buildWhen: (pre, cur) {
            return true;
          },
          builder: (context, state) {
            return PageView.builder(
              itemCount: state.urls.length,
              scrollDirection: Axis.vertical,
              physics: QuickerScrollPhysics(),
              allowImplicitScrolling: true,
              onPageChanged: (index) =>
                  BlocProvider.of<PreloadBloc>(context, listen: false)
                      .add(PreloadEvent.onVideoIndexChanged(index)),
              itemBuilder: (context, index) {
                // Is at end and isLoading
                final bool _isLoading =
                    (state.isLoading && index == state.urls.length - 1);
                final controllerItem = state.controllers[index];
                return controllerItem != null
                    ? VideoWidget(
                        isLoading: _isLoading,
                        videoPlayerController:
                            controllerItem.videoPlayerController,
                        chewieController: controllerItem.chewieController,
                      )
                    : SizedBox(
                        width: 10,
                        height: 10,
                        child: CircularProgressIndicator(
                          color: Colors.lightBlue,
                        ),
                      );
                // return state.focusedIndex == index
                //     ? VideoWidget(
                //         isLoading: _isLoading,
                //         controller: state.controllers[index]!,
                //       )
                //     : const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}

/// Custom Feed Widget consisting video
class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required this.isLoading,
    required this.videoPlayerController,
    required this.chewieController,
  }) : super(key: key);

  final bool isLoading;
  final CachedVideoPlayerController videoPlayerController;
  final ChewieController chewieController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: videoPlayerController,
            builder: (BuildContext context, CachedVideoPlayerValue value,
                Widget? child) {
              return Center(
                child: CrossFadeWidget(
                  firstChild: Container(
                    color: Colors.orange,
                  ),
                  secondChild: Chewie(
                    controller: chewieController,
                  ),
                  isInitialized: value.isInitialized,
                ),
              );
              return Center(
                child: value.isInitialized
                    ? Chewie(
                        controller: chewieController,
                      )
                    : SpinKitThreeBounce(
                        color: Colors.lightBlueAccent,
                        size: 50,
                      ),
              );
            },
          ),
        ),
        AnimatedCrossFade(
          alignment: Alignment.bottomCenter,
          sizeCurve: Curves.decelerate,
          duration: const Duration(milliseconds: 400),
          firstChild: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LinearProgressIndicator(
              minHeight: 2,
              backgroundColor: Colors.white.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
              // valueColor: ColorTween(
              //         begin: Colors.lightBlue, end: Colors.lightBlueAccent)
              //     .animate(kAlwaysCompleteAnimation),
            ),
            // child: SpinKitThreeBounce(
            //   color: Colors.white,
            //   size: 8,
            // ),
            // child: CupertinoActivityIndicator(
            //   color: Colors.white,
            //   radius: 8,
            // ),
          ),
          secondChild: const SizedBox(),
          crossFadeState:
              isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ],
    );
  }
}

extension BlendColor on Color {
  Color operator +(Color other) => Color.alphaBlend(this, other);
}

class CrossFadeWidget extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;
  final bool isInitialized;
  const CrossFadeWidget({
    Key? key,
    required this.firstChild,
    required this.secondChild,
    required this.isInitialized,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      alignment: Alignment.bottomCenter,
      sizeCurve: Curves.decelerate,
      duration: const Duration(milliseconds: 250),
      firstChild: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: firstChild),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: LinearProgressIndicator(
              minHeight: 2,
              backgroundColor: Colors.white.withOpacity(0.16),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
      secondChild: secondChild,
      crossFadeState:
          !isInitialized ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

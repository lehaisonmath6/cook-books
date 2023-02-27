// import 'dart:html';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:video_player/video_player.dart';

class VideoBox extends StatefulWidget {
  const VideoBox({required this.videoUrl, super.key});
  final String videoUrl;
  @override
  State<VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> {
  late VideoPlayerController _controller;
  late CustomVideoPlayerController _customVideoPlayerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _controller,
      customVideoPlayerSettings: const CustomVideoPlayerSettings(
          showFullscreenButton: true,
          showPlayButton: true,
          showDurationPlayed: true,
          alwaysShowThumbnailOnVideoPaused: true,
          settingsButtonAvailable: true,
          showDurationRemaining: true),
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: CustomVideoPlayer(
        customVideoPlayerController: _customVideoPlayerController,
      ),
    );
  }
}

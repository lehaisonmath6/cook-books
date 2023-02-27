import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class VideoBoxDesktop extends StatefulWidget {
  const VideoBoxDesktop({required this.videoUrl, super.key});
  final String videoUrl;
  @override
  State<VideoBoxDesktop> createState() => _VideoBoxDesktopState();
}

class _VideoBoxDesktopState extends State<VideoBoxDesktop> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: VideoPlayer(_controller),
    );
  }
}

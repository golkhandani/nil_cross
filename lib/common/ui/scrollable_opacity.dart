import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollableOpacity extends StatefulWidget {
  const ScrollableOpacity({
    Key? key,
    required this.scrollController,
    this.child,
    required this.hideLimit,
    required this.showLimit,
    required this.scrollDirection,
  }) : super(key: key);
  final Widget? child;
  final ScrollController scrollController;
  final double hideLimit;
  final double showLimit;
  final ScrollDirection scrollDirection;

  @override
  State<ScrollableOpacity> createState() => _ScrollableOpacityState();
}

class _ScrollableOpacityState extends State<ScrollableOpacity> {
  bool show = true;

  @override
  void initState() {
    widget.scrollController.addListener(_scrollControllerListener);
    super.initState();
  }

  double savedScroll = 0;
  void _scrollControllerListener() {
    if (!mounted) {
      return;
    }

    final isUpEnouth =
        widget.scrollController.position.maxScrollExtent - widget.scrollController.offset > 160;
    final isDown = widget.scrollController.position.userScrollDirection == widget.scrollDirection;
    final isDownEnough = widget.scrollController.offset > widget.hideLimit;
    if (isDown && isDownEnough && show) {
      setState(() {
        show = false;
        savedScroll = widget.scrollController.offset;
      });
    } else if (!isDown && isUpEnouth && !show) {
      setState(() {
        show = true;
        savedScroll = widget.scrollController.offset;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: show ? 1 : 0,
      duration: const Duration(milliseconds: 100),
      child: widget.child,
    );
  }
}

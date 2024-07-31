import 'package:flutter/material.dart';

class AutoScrollView extends StatefulWidget {
  final Widget child;
  final Axis scrollDirection;
  final Duration duration;
  final bool reverse;

  AutoScrollView({
    required this.child,
    this.scrollDirection = Axis.horizontal,
    this.duration = const Duration(seconds: 10),
    this.reverse = false,
  });

  @override
  _AutoScrollViewState createState() => _AutoScrollViewState();
}

class _AutoScrollViewState extends State<AutoScrollView> with TickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      _animation = Tween<double>(begin: 0, end: maxScrollExtent).animate(_animationController)
        ..addListener(() {
          _scrollController.jumpTo(_animation.value);
        });

      _animationController.repeat(reverse: widget.reverse);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: widget.scrollDirection,
      child: widget.child,
    );
  }
}

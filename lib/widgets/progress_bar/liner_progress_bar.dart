import 'package:flutter/material.dart';

class LinerProgressBar extends StatefulWidget {
  final double progress;
  final Color backgroundColor;
  final Color color;

  const LinerProgressBar({
    super.key,
    required this.progress,
    this.backgroundColor = Colors.grey,
    this.color = Colors.white,
  });

  @override
  State<LinerProgressBar> createState() => _ImpressiveLinearProgressState();
}

class _ImpressiveLinearProgressState extends State<LinerProgressBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: widget.backgroundColor,
      color: widget.color,
      trackGap: 20,
      minHeight: 4,
      borderRadius: BorderRadius.circular(16),
    );
  }
}

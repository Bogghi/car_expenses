import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final bool shadow;
  final double borderRadius;

  List<BoxShadow> shadowDef = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 5.0,
      blurRadius: 7.0,
      offset: const Offset(0.0, 3.0)
    )
  ];

  CardWidget({
    super.key,
    required this.child,
    this.shadow = true,
    this.borderRadius = 10.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).colorScheme.inversePrimary,
        boxShadow: shadow ? shadowDef : []
      ),
      width: double.infinity,
      child: child,
    );
  }
}
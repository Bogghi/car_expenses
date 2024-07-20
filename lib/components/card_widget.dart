import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).colorScheme.inversePrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5.0,
            blurRadius: 7.0,
            offset: const Offset(0.0, 3.0)
          )
        ]
      ),
      width: double.infinity,
      child: child,
    );
  }
}
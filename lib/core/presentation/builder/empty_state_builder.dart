import 'package:flutter/material.dart';

class EmptyStateBuilder extends StatelessWidget {
  final bool isEmpty;
  final Widget emptyContent;
  final Widget child;

  const EmptyStateBuilder({
    super.key,
    required this.isEmpty,
    required this.emptyContent,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return emptyContent;
    } else {
      return child;
    }
  }
}

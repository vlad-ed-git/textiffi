import 'package:flutter/material.dart';

class Snack {
  final String content;
  final Function? action;
  final String actionLbl;
  final bool isError;

  const Snack(
      {required this.content,
      this.action,
      this.actionLbl = '',
      this.isError = false});

  SnackBar create(BuildContext context) {
    final bgColor = isError
        ? Theme.of(context).colorScheme.error
        : Theme.of(context).colorScheme.primaryContainer;
    final txtColor = isError
        ? Theme.of(context).colorScheme.onError
        : Theme.of(context).colorScheme.onPrimaryContainer;
    return SnackBar(
        elevation: 12.0,
        duration: const Duration(seconds: 5),
        content: Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: txtColor,
              ),
        ),
        action: action != null
            ? SnackBarAction(
                label: actionLbl.toUpperCase(),
                onPressed: () => action!(),
                backgroundColor: txtColor,
                textColor: bgColor,
              )
            : null,
        backgroundColor: bgColor);
  }
}

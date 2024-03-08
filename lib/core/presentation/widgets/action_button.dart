import 'package:flutter/material.dart';

class ActionBtn extends StatelessWidget {
  final Widget child;
  final Color bgColor, onBgColor;
  final BorderSide borderSide;
  final double radius;
  final VoidCallback onClick;
  final bool isLoading;

  const ActionBtn({
    super.key,
    required this.child,
    required this.bgColor,
    required this.onBgColor,
    required this.onClick,
    this.radius = 4,
    this.borderSide = BorderSide.none,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container(
        alignment: Alignment.center,
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          backgroundColor: bgColor,
          color: onBgColor,
        ),
      );
    }
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            bgColor,
          ),
          elevation: MaterialStatePropertyAll(
            0,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: borderSide,
              borderRadius: BorderRadius.circular(radius),
            ),
          )),
      onPressed: () {
        if (!isLoading) {
          onClick();
        }
      },
      child: child,
    );
  }
}

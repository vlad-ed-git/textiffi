import 'package:flutter/material.dart';

class RouteNotFound extends StatelessWidget {
  const RouteNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Center(
          child: Text(
            '404!',
          ),
        ),
      ),
    );
  }
}

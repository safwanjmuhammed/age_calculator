import 'package:age_calculator/components/age_finder_container.dart';
import 'package:flutter/material.dart';

class AgeCalculator extends StatelessWidget {
  const AgeCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AgeFinderContainer()),
    );
  }
}

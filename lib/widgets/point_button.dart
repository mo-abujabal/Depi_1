import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class PointButton extends StatelessWidget {
  final int points;
  final VoidCallback onPressed;

  const PointButton({required this.points, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: double.infinity,
        height: AppBorders.buttonHeight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
          onPressed: onPressed,
          child: Text('Add $points point', style: AppTextStyles.buttonText),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class ResetButton extends StatelessWidget {
  final void Function()? onPressed;

  const ResetButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: AppBorders.resetButtonWidth,
        height: AppBorders.buttonHeight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
          onPressed: onPressed,
          child: const Text('Reset', style: AppTextStyles.resetButtonText),
        ),
      ),
    );
  }
}

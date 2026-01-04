import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.orange;
  static const Color buttonText = Colors.black87;
  static const Color white = Colors.white;
}


class AppTextStyles {
  static const TextStyle teamName = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle scoreDisplay = TextStyle(
    fontSize: 200,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.buttonText,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle resetButtonText = TextStyle(
    color: AppColors.buttonText,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );
}

class AppBorders {
  static const double borderRadius = 8.0;
  static const double buttonHeight = 50.0;
  static const double resetButtonWidth = 200.0;
}

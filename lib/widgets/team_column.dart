import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import 'point_button.dart';

class TeamColumn extends StatelessWidget {
  final String teamName;
  final int score;
  final Function(int) onAddPoints;

  const TeamColumn({
    required this.teamName,
    required this.score,
    required this.onAddPoints,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(teamName, style: AppTextStyles.teamName),
        SizedBox(height: 16),
        Text('$score', style: AppTextStyles.scoreDisplay),
        SizedBox(height: 16),
        PointButton(points: 1, onPressed: () => onAddPoints(1)),
        SizedBox(height: 16),
        PointButton(points: 2, onPressed: () => onAddPoints(2)),
        SizedBox(height: 16),
        PointButton(points: 3, onPressed: () => onAddPoints(3)),
      ],
    );
  }
}

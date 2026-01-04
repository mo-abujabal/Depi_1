import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_constants.dart';
import '../widgets/team_column.dart';
import '../widgets/reset_button.dart';

class BasketballCounterScreen extends StatefulWidget {
  const BasketballCounterScreen({super.key});

  @override
  State<BasketballCounterScreen> createState() =>
      _BasketballCounterScreenState();
}

class _BasketballCounterScreenState extends State<BasketballCounterScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addPointsToTeamA(int points) {
    setState(() {
      teamAScore += points;
    });
  }

  void addPointsToTeamB(int points) {
    setState(() {
      teamBScore += points;
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const Text(
          'Basketball Points Counter',
          style: AppTextStyles.appBarTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TeamColumn(
                    teamName: 'Team A',
                    score: teamAScore,
                    onAddPoints: addPointsToTeamA,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  width: 10,
                  child: const VerticalDivider(),
                ),
                Expanded(
                  child: TeamColumn(
                    teamName: 'Team B',
                    score: teamBScore,
                    onAddPoints: addPointsToTeamB,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ResetButton(onPressed: resetScores),
          ],
        ),
      ),
    );
  }
}

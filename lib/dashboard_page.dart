import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'reward_card.dart';

class DashboardPage extends StatelessWidget {
  final String userName;

  const DashboardPage({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        automaticallyImplyLeading: true,
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, $userName!",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Your Referral Code: yourname2025"),
            const SizedBox(height: 10),
            const Text("Total Donations Raised: ₹5,000"),
            const SizedBox(height: 20),
            const Text(
              "Rewards:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                RewardCard(icon: Icons.star, label: "Bronze"),
                RewardCard(icon: Icons.emoji_events, label: "Silver"),
                RewardCard(icon: Icons.workspace_premium, label: "Gold"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

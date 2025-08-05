import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'dashboard_page.dart';

class AnnouncementsPage extends StatelessWidget {
  AnnouncementsPage({Key? key}) : super(key: key);

  final List<String> messages = [
    "🏆 Leaderboard updated every Friday!",
    "🎁 Next reward tier unlocks at ₹10,000.",
    "📣 Refer friends to earn bonus points!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Announcements"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => DashboardPage(
                userName: "Intern",
              ),
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: messages
            .map(
              (msg) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(msg),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

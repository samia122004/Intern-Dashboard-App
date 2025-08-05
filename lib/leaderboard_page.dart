import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'dashboard_page.dart';

class LeaderboardPage extends StatelessWidget {
  LeaderboardPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> leaderboard = [
    {"name": "Alice", "score": 10000},
    {"name": "Bob", "score": 8500},
    {"name": "Samia", "score": 5000},
    {"name": "John", "score": 3000},
    {"name": "Zara", "score": 2000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
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
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final entry = leaderboard[index];
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text(entry['name']),
            trailing: Text("₹${entry['score']}"),
          );
        },
      ),
    );
  }
}

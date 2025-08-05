import 'package:flutter/material.dart';
//import 'package:fundraising_intern_portal/reward_card.dart';
import 'leaderboard_page.dart';
import 'announcements_page.dart';
import 'dashboard_page.dart';
import 'login_page.dart';
//import 'reward_card.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(child: Text("Menu")),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text("Dashboard"),
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DashboardPage(userName: "Intern"),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("Leaderboard"),
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LeaderboardPage(),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("Announcements"),
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnnouncementsPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}

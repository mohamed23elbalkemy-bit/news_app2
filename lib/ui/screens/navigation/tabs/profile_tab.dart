import 'package:flutter/material.dart';

import '../../../widgets/settings_item.dart';


class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF8F6),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF8F6),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            /// Profile
            SettingsItem(
              icon: Icons.person,
              text: "Profile",
              color: Colors.red,
            ),

            const SizedBox(height: 16),

            /// Logout
            SettingsItem(
              icon: Icons.logout,
              text: "Logout",
              color: Colors.red,
            ),

            const SizedBox(height: 12),

            const Divider(),

            const SizedBox(height: 20),
            const Text(
              "General Settings",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            SettingsItem(
              icon: Icons.bookmark,
              text: "Bookmarks",
            ),

            /// Dark Mode
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.dark_mode, color: Colors.red),
                    SizedBox(width: 12),
                    Text(
                      "Dark Mode",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Switch(
                  value: isDarkMode,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            SettingsItem(
              icon: Icons.contact_support,
              text: "Contact Us",
            ),
            const SizedBox(height: 8),
            SettingsItem(
              icon: Icons.language,
              text: "Language",
            ),
            const SizedBox(height: 8),
            SettingsItem(
              icon: Icons.rate_review,
              text: "Rate this app",
            ),
            const SizedBox(height: 8),
            SettingsItem(
              icon: Icons.verified_user,
              text: "License",
            ),
            const SizedBox(height: 8),
            SettingsItem(
              icon: Icons.privacy_tip,
              text: "Privacy Policy",
            ),
            const SizedBox(height: 8),
            SettingsItem(
              icon: Icons.info,
              text: "About Us",
            ),
          ],
        ),
      ),
    );
  }
}

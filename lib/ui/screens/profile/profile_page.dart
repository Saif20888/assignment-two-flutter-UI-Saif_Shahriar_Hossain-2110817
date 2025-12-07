import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_info_tile.dart';
import '../../widgets/bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  final bool showBottomNav;

  const ProfilePage({Key? key, this.showBottomNav = true}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    child: Text(
                      'KA',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome back,',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Saif Shahriar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Profile Header with Avatar
              const Center(child: ProfileHeader()),

              // Name Tile
              const ProfileInfoTile(label: 'Name', value: 'Saif Shahriar'),

              const SizedBox(height: 8),

              // Student ID Tile
              const ProfileInfoTile(label: 'Student ID', value: '2110817'),

              const SizedBox(height: 8),

              // Email Tile
              const ProfileInfoTile(
                label: 'Email',
                value: '2110817@iub.edu.bd',
              ),

              const SizedBox(height: 12),

              // Bio Tile
              const ProfileInfoTile(
                label: 'Bio / Story',
                value:
                    '​I am Md. Saif Shahriar Hossain a Computer Science student at Independent University, Bangladesh (IUB), currently focused on developing the skills needed for a successful career as a Software Engineer. I aim to achieve academic success while actively looking for and taking on real-world opportunities. This includes engaging in projects and seeking experiences that help me apply what I learn in class, making sure I am prepared for the job market.',
                isHighlighted: true,
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: widget.showBottomNav
          ? BottomNav(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            )
          : null,
    );
  }
}

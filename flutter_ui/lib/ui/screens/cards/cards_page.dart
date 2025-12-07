import 'package:flutter/material.dart';
import 'widgets/credit_card.dart';
import 'widgets/card_action_buttons.dart';
import 'widgets/linked_account_item.dart';
import '../../widgets/bottom_nav.dart';

class CardsPage extends StatefulWidget {
  final bool showBottomNav;

  const CardsPage({Key? key, this.showBottomNav = true}) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  int _selectedIndex = 0;

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
                      'SS',
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
                          color: Colors.black.withOpacity(0.06),
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

              const SizedBox(height: 18),

              // Card
              const CreditCard(),

              const SizedBox(height: 18),

              // Action buttons row
              const CardActionButtons(),

              const SizedBox(height: 22),

              // Linked accounts header
              const Text(
                'Linked Accounts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              const LinkedAccountItem(
                accountName: 'Shared Savings',
                amount: '\$5,500.00',
              ),

              const SizedBox(height: 300),
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

import 'package:flutter/material.dart';

class LinkedAccountItem extends StatelessWidget {
  final String accountName;
  final String amount;

  const LinkedAccountItem({
    Key? key,
    required this.accountName,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFEAF0FF),
          child: const Text(
            'S',
            style: TextStyle(
              color: Color(0xFF6F4AF6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          accountName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(amount, style: const TextStyle(color: Colors.grey)),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}

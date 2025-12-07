import 'package:flutter/material.dart';

class CardActionButtons extends StatelessWidget {
  const CardActionButtons({Key? key}) : super(key: key);

  Widget _buildButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 88,
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(icon, color: const Color(0xFF6F4AF6)),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(Icons.close, 'Block'),
        _buildButton(Icons.credit_card, 'Details'),
        _buildButton(Icons.info_outline, 'Limit'),
      ],
    );
  }
}

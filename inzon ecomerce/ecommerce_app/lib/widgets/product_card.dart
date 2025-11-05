import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String productName;
  final double price;
  final String imageUrl;
  final VoidCallback onTap; // 1. ADD THIS LINE

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
    required this.imageUrl,
    required this.onTap, // 2. ADD THIS TO THE CONSTRUCTOR
  });

  @override
  Widget build(BuildContext context) {
    // 1. Wrap the Card in an InkWell widget
    return InkWell(
      onTap: onTap, // 2. Call the function we passed in
      child: Card(
        elevation: 3,
        child: Column(
          // 3. The rest of your Column code is UNCHANGED
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ... (Expanded Image.network, Padding, Text, etc.)
          ],
        ),
      ),
    );
  }


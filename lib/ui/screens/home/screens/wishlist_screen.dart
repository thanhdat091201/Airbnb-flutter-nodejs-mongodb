import 'package:airbnb/ui/commons/text_widget/app_text.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 50),
            AppText(
              title: "Wishlists",
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 38),
            AppText(
              title: 'Create your first wishlist',
              fontSize: 22,
              fontWeight: FontWeight.w600,
              titleColor: Color(0xFF222222),
            ),
            SizedBox(height: 8),
            Text(
              'As you search, tap the heart icon to save your favourite places to stay or things to do to a wishlist.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF717171),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

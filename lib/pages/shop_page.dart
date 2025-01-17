import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search
        Container(
          padding: EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        // Message
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text("everyone flies... some fly longer than others"),
        ),

        // Hot pick
        Row(
          children: [
            Text(
              "Hot pick 🔥",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text("See all")
          ],
        )
      ],
    );
  }
}

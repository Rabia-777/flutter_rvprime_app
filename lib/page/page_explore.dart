import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';

class PageExplore extends StatelessWidget {
  const PageExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF97DCE5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Explore"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.mic),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),

            
              onSubmitted: (value) {
                Navigator.pushNamed(context, "/live");
              },
            ),

            const SizedBox(height: 20),

            
            const Expanded(child: Center(child: Text("Explore content here"))),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(index: 0),
    );
  }
}
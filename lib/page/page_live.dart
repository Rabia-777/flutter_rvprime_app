import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';

class PageLive extends StatelessWidget {
  const PageLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF97DCE5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "live",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.black54),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.black54),
                ],
              ),
            ),

            const SizedBox(height: 20),

           
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Icon(Icons.play_circle_outline,
                      size: 70, color: Colors.black54),
                ),
              ),
            ),

            const SizedBox(height: 20),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.fast_rewind, size: 40),
                SizedBox(width: 25),
                Icon(Icons.play_arrow, size: 40),
                SizedBox(width: 25),
                Icon(Icons.fast_forward, size: 40),
              ],
            ),

            const SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Jun 19, 2024",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("9:41 AM",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),

            const SizedBox(height: 20),

            
            const Text(
              "Real Madrid   -vs-   Girona",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "beIN SPORTS HD 1          live",
              style: TextStyle(color: Colors.black87),
            ),

            const SizedBox(height: 20),

           
            const Text(
              "Details of the Real Madrid vs Girona match\n"
              "Today, Real Madrid and Girona Club meet\n"
              "in the Spanish League, La Liga, at 23:20 Algeria time.\n\n"
              "Information about the Real Madrid vs Girona match —\n"
              "The match will be broadcast exclusively on beIN SPORTS HD 1.\n",
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

     
      bottomNavigationBar: const BottomNav(index: 1),
    );
  }
}
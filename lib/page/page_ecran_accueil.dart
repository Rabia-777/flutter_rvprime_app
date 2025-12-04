import 'package:flutter/material.dart';

class PageEcranAccueil extends StatelessWidget {
  const PageEcranAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9EE6E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF9EE6E8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, "/menu");
          },
        ),

        title: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/explore");
          },
          child: Container(
            height: 38,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8),
                Text("Search", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "RV PRIME",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '" FOOTBALL. ANYTIME. ANYWHERE. "',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 20),
                      ..._buildButtons(context),

                      const SizedBox(height: 10),
                      const Center(child: Icon(Icons.keyboard_arrow_down)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.tv, size: 40),
                  onPressed: () {
                    Navigator.pushNamed(context, "/live");
                  },
                ),

                IconButton(
                  icon: const Icon(Icons.play_circle_fill, size: 40),
                  onPressed: () {
                    Navigator.pushNamed(context, "/liveevents");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    List<String> channels = [
      "beIN SPORTS",
      "beIN ENTERTAINMENT",
      "SSC SPORTS",
      "GOAL TV",
      "DAZN",
      "TSN",
    ];

    return channels
        .map(
          (name) => Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/liveevents');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(name),
            ),
          ),
        )
        .toList();
  }
}

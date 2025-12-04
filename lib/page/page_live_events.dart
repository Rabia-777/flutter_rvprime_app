import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';

class PageLiveEvents extends StatelessWidget {
  const PageLiveEvents({super.key});

  Widget matchItem(
    BuildContext context, {
    required String teams,
    required String league,
    required String channel,
    required String date,
    required String time,
  }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/live"),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              teams,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              league,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            Text(
              channel,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  time,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF97DCE5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("RV PRIME"),
      ),
      body: Center(
        child: SizedBox(
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              matchItem(
                context,
                teams: "Chelsea 1 vs 2 Man City",
                league: "Premier League",
                channel: "DAZN 1",
                date: "Sep 20, 2025",
                time: "4pm",
              ),
              matchItem(
                context,
                teams: "Rayo vs Elche",
                league: "La Liga",
                channel: "SSC Sports 3",
                date: "Sep 20, 2025",
                time: "8pm",
              ),
              matchItem(
                context,
                teams: "Barcelona vs Paris-SG",
                league: "Champions League",
                channel: "beIN SPORT1",
                date: "Sep 20, 2025",
                time: "8pm",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(index: 0),
    );
  }
}
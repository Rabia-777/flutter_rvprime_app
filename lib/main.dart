import 'package:flutter/material.dart';
import 'page/page_logo.dart';

import 'page/page_ecran_accueil.dart';

import 'page/page_live_events.dart';
import 'page/page_live.dart';
import 'page/page_explore.dart';
import 'page/page_menu.dart';

void main() => runApp(const RVPrimeApp());

class RVPrimeApp extends StatelessWidget {
  const RVPrimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RV PRIME",

      initialRoute: "/logo",

      routes: {
        "/logo": (_) => const PageLogo(),
        "/accueil": (_) => const PageEcranAccueil(),
        "/liveevents": (_) => const PageLiveEvents(),
        "/live": (_) => const PageLive(),
        "/explore": (_) => const PageExplore(),
        "/menu": (_) => const PageMenu(),
      },
    );
  }
}
import 'package:flutter/material.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({super.key});

  @override
  State<PageMenu> createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {

  String selectedLanguage = "English";
  String selectedQuality = "720p";
  String selectedTheme = "Light";
  List<String> selectedNotifications = ["Goals", "Highlights"];

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
        title: const Text("Menu"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: buildCategory(
                    title: "Language",
                    options: ["French", "English", "Arabic", "Spanish"],
                    selected: selectedLanguage,
                    onSelect: (v) => setState(() => selectedLanguage = v),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildCategory(
                    title: "Video Quality",
                    options: ["Auto", "480p", "720p", "1080p"],
                    selected: selectedQuality,
                    onSelect: (v) => setState(() => selectedQuality = v),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: buildCategory(
                    title: "Theme",
                    options: ["Light", "Dark", "Premium Gold"],
                    selected: selectedTheme,
                    onSelect: (v) => setState(() => selectedTheme = v),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildCategoryMulti(
                    title: "Notifications",
                    options: ["Goals", "Comments", "Highlights"],
                    selectedList: selectedNotifications,
                    onToggle: (v) {
                      setState(() {
                        if (selectedNotifications.contains(v)) {
                          selectedNotifications.remove(v);
                        } else {
                          selectedNotifications.add(v);
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
  Widget buildCategory({
    required String title,
    required List<String> options,
    required String selected,
    required Function(String) onSelect,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          for (var option in options)
            ListTile(
              dense: true,
              title: Text(option),
              trailing: selected == option
                  ? const Icon(Icons.check_box)
                  : const Icon(Icons.check_box_outline_blank),
              onTap: () => onSelect(option),
            ),
        ],
      ),
    );
  }

  
  Widget buildCategoryMulti({
    required String title,
    required List<String> options,
    required List<String> selectedList,
    required Function(String) onToggle,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          for (var option in options)
            ListTile(
              dense: true,
              title: Text(option),
              trailing: selectedList.contains(option)
                  ? const Icon(Icons.check_box)
                  : const Icon(Icons.check_box_outline_blank),
              onTap: () => onToggle(option),
            ),
        ],
      ),
    );
  }
}
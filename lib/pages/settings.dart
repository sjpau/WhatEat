import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_eat_flutter/styles/theme_indigo.dart';
import 'package:what_eat_flutter/styles/theme_regular.dart';
import 'package:what_eat_flutter/styles/theme_minimalist.dart';
import 'package:what_eat_flutter/providers/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    final List<Map<String, dynamic>> themes = [
      {'name': 'Regular Theme', 'data': themeRegular},
      {'name': 'Minimalist', 'data': themeMinimalistCool},
      {'name': 'Indigo', 'data': indigoTheme},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView.builder(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          final theme = themes[index];
          final isSelected = themeProvider.selectedTheme == theme['data'];
          
          return ListTile(
            title: Text(theme['name']),
            trailing: isSelected ? const Icon(Icons.check, color: Colors.blue) : null,
            onTap: () {
              themeProvider.setTheme(theme['data']);
              //TODO: make theme persistent
            },
          );
        },
      ),
    );
  }
}

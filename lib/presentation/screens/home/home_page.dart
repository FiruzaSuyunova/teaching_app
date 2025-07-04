import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../localization/locale_provider.dart';
import '../../providers/theme_provider.dart';
import '../login_screen/login_page.dart';
import '../../../l10n/locales/app_localizations.dart';
import 'package:provider/provider.dart';
import '../students_screen/home_page.dart';
import '../teachers_screen/home_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {


    final t = AppLocalizations.of(context)!;
    final auth = FirebaseAuth.instance;
    final localeProvider = Provider.of<LocaleProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeCode = localeProvider.locale?.languageCode.toUpperCase() ?? 'EN';

    return Scaffold(
      appBar: AppBar(
        title: Text(t.appTitle),
        actions: [
          // 🌍 Language popup menu
          PopupMenuButton<Locale>(
            tooltip: 'Select language',
            icon: Row(
              children: [
                const Icon(Icons.public),
                const SizedBox(width: 4),
                Text(localeCode),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            onSelected: (Locale locale) {
              localeProvider.setLocale(locale);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: Locale('uz'),
                child: Text('Oʻzbek'),
              ),
              const PopupMenuItem(
                value: Locale('ru'),
                child: Text('Русский'),
              ),
              const PopupMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
            ],
          ),

          ///Theme toggle
          IconButton(
            icon: Icon(
              themeProvider.isDark ? Icons.wb_sunny : Icons.nightlight_round,
            ),
            onPressed: () => themeProvider.toggleTheme(),
          ),

          /// Logout icon
          IconButton(
            onPressed: () async {
              await auth.signOut();
              if (context.mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              }
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      /// Body: LanguageSelector + role selection + next
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Text(t.selectRole, style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ['Teacher', 'Student'].map((role) {
                final selected = _selectedRole == role;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () => setState(() => _selectedRole = role),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      selected ? Theme.of(context).colorScheme.primary : null,
                    ),
                    child: Text(
                      role,
                      style: TextStyle(color: selected ? Colors.white : null),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _selectedRole == null
                  ? null
                  : () {
                if (_selectedRole == 'Teacher') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TeachersHomeScreen()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const StudentsHomePage()),
                  );
                }
              },
              child: Text(t.next),
            ),
          ],
        ),
      ),
    );
  }
}

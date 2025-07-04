import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:teaching_app/presentation/localization/locale_provider.dart';
import 'package:teaching_app/presentation/providers/theme_provider.dart';
import 'package:teaching_app/presentation/screens/welcome_screen/welcome_screen.dart';
import 'l10n/locales/app_localizations.dart';






class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    ///providers
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);

     return MaterialApp(
       title: 'Teaching App',
       localizationsDelegates: const [
         AppLocalizations.delegate,
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
       ],
       supportedLocales: const [
         Locale('en'),
         Locale('uz'),
         Locale('ru'),
       ],
       locale: localeProvider.locale,

       theme: ThemeData.light(),
       darkTheme: ThemeData.dark(),
       themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
       home: WelcomeScreen(),
     );
  }
}






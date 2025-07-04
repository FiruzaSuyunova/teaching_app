import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:teaching_app/presentation/localization/locale_provider.dart';
import 'package:teaching_app/presentation/providers/theme_provider.dart';
import 'app.dart';
import 'firebase_options.dart';




void main() async {
  ///firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ///localization
  WidgetsFlutterBinding.ensureInitialized();
  final localeProvider = LocaleProvider();
  await localeProvider.loadSavedLocale();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => localeProvider),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teaching App',
      debugShowCheckedModeBanner: false,
      home: const App(),
    );
  }
}
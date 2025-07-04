import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locale_provider.dart';

class LanguageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return DropdownButton<Locale>(
      value: localeProvider.locale ?? const Locale('en'),
      onChanged: (locale) {
        if (locale != null) {
          localeProvider.setLocale(locale);
        }
      },
      items: const [
        DropdownMenuItem(value: Locale('uz'), child: Text('O‘zbek')),
        DropdownMenuItem(value: Locale('ru'), child: Text('Русский')),
        DropdownMenuItem(value: Locale('en'), child: Text('English')),
      ],
    );
  }
}

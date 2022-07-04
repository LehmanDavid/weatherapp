import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLanguageDialog extends StatefulWidget {
  const ChangeLanguageDialog({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageDialog> createState() => _ChangeLanguageDialogState();
}

class _ChangeLanguageDialogState extends State<ChangeLanguageDialog> {
  late Locale currentLocale;
  @override
  void didChangeDependencies() {
    currentLocale = context.locale;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 52, 101, 156),
      title: Text(
        'choose_lang'.tr(),
        style: const TextStyle(color: Colors.white),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < context.supportedLocales.length; i++)
            ListTile(
              title: Text(
                context.supportedLocales[i].languageCode,
                style: const TextStyle(color: Colors.white),
              ),
              leading: Radio<Locale>(
                toggleable: true,
                groupValue: currentLocale,
                value: context.supportedLocales[i],
                onChanged: (locale) {
                  setState(() {
                    currentLocale = locale!;
                  });
                },
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await context.setLocale(currentLocale);
            Navigator.of(context, rootNavigator: true).pop();
          },
          child: Text(
            'submit'.tr(),
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
    );
  }
}

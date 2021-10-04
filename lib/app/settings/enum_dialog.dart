import 'package:flutter/material.dart';

class EnumDialog {
  static Future<T?> show<T>(BuildContext context, String title,
      Map<T, String> options, T current) async {
    return showDialog<T>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          children: options.keys.map(
            (T option) {
              return SimpleDialogOption(
                onPressed: () => Navigator.pop(context, option),
                child: ListTile(
                  title: Text(options[option]!),
                  leading: Radio<T>(
                    value: option,
                    groupValue: current,
                    onChanged: (option) => Navigator.pop(context, option),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 8.0,
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}

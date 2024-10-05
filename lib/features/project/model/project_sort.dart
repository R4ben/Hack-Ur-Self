import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:hack_ur_self/core/localization/translations.dart';

enum ProjectSort {
  lastUpdate,
  name;

  String present(Translations t) => switch (this) {
        lastUpdate => t.lifeProjects.sortby.lastUpdate,
        name => t.lifeProjects.sortby.name,
      };
  IconData get icon => switch (this) {
        lastUpdate => FluentIcons.history_24_regular,
        name => FluentIcons.text_sort_ascending_24_regular,
      };
}

enum SortMode { ascending, descending }



import 'package:flutter/cupertino.dart';
import 'package:inecta_exercise/Modules/grading/grading.dart';
import 'package:inecta_exercise/Modules/offload/offload.dart';
import 'package:inecta_exercise/Modules/settings/setings.dart';


class AppRoutes {
  // Route name constants
  static const String offload = '/offload';
  static const String settings = '/settings';
  static const String grading = '/grading';

  /// The map used to define our routes, needs to be supplied to [MaterialApp]
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      offload: (context) => const Offload(),
      settings: (context) => const Settings(),
      grading: (context) => const Grading(),
    };
  }
}

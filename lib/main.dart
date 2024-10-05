import 'package:flutter/widgets.dart';
import 'package:hack_ur_self/bootstrap.dart';
import 'package:hack_ur_self/core/model/environment.dart';

void main(List<String> args) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  return bootStrap(Environment.dev, widgetsBinding);
}

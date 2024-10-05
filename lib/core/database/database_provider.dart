import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_database.dart';
part 'database_provider.g.dart';
@Riverpod(keepAlive: true)
AppDatabase appDatabase(AppDatabaseRef ref) => AppDatabase.connect();

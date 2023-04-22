import 'package:airbnb/infrastructure/providers/home_provider/home_provider.dart';
import 'package:airbnb/infrastructure/providers/inbox_provider/inbox_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());
final inboxProvider = ChangeNotifierProvider((ref) => InboxProvider());


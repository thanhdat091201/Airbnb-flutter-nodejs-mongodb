import  'package:airbnb/infrastructure/response/home_card_response.dart';
import 'package:flutter/cupertino.dart';

class InboxProvider extends ChangeNotifier {

  bool isNotificationVisible = false;

  void showNotification() {
    isNotificationVisible = true;
    notifyListeners();
  }

  void hideNotification() {
    isNotificationVisible = false;
    notifyListeners();
  }
}

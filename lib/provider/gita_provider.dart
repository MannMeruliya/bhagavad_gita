import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class GitaProvider extends ChangeNotifier {
  List bhagavadgitalist = [];
  bool isChange = true;
  bool isMean = true;
  bool isTransliterated = true;

  changeLanguage() {
    isChange = !isChange;
    notifyListeners();
  }

  changeTransliterated() {
    isTransliterated = !isTransliterated;
    notifyListeners();
  }

  changeMeaning() {
    isMean = !isMean;
    notifyListeners();
  }

  Future<void> jsondata() async {
    String data = await rootBundle.loadString("assets/json/data.json");
    bhagavadgitalist = json.decode(data);
    notifyListeners();
  }
}

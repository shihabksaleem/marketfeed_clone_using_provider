import 'dart:ui';

import 'package:flutter/cupertino.dart';

class leaderboardProviderModel extends ChangeNotifier {
  List indexOptions = [
    'Nifty 50',
    'Nifty 100',
    'FnO',
    'Nifty 500',
    'Nifty Auto',
    'Nifty Bank',
    'Nifty FMCG',
    'Nifty Pharma',
    'Nifty IT',
    'Nifty Metal',
    'NR4',
    'NR7',
    'SWING',
  ];

  List looserGainer = ['Top Gainers', 'Top Losers'];

  //  Values for indices options

  late String indicesResetValue;
  late String selectedIndicesValue = indexOptions.first;
  late String indicesRadioValue = indexOptions.first;

  void onRadioButtonPressed(int index) {
    indicesRadioValue = indexOptions[index];
    notifyListeners();
  }

  onIndicesConfirmPressed() {
    selectedIndicesValue = indicesRadioValue;
    notifyListeners();
  }

  onIndicesBottomContainerCalled() {
    indicesResetValue = indicesRadioValue;
  }

  onIndicesResetPressed() {
    indicesRadioValue = indicesResetValue;
    notifyListeners();
  }

  //  Values for loserGainer options

  late String LGResetValue;
  late String selectedLGValue = looserGainer.first;
  late String LGRadioValue = looserGainer.first;

  void onLGRadioPressed(int index) {
    LGRadioValue = looserGainer[index];
    notifyListeners();
  }

  onLGConfirmPressed() {
    selectedLGValue = LGRadioValue;
    notifyListeners();
  }

  onLGBottomContainerCalled() {
    LGResetValue = LGRadioValue;
  }

  onLGResetPressed() {
    LGRadioValue = LGResetValue;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:sample_1/presentation/screens/home/home_screen_view_state.dart';

class HomeScreenViewModel extends ChangeNotifier {
  HomeScreenViewState _viewState = HomeScreenViewState.init();

  void onIncrement() {
    _viewState = _viewState.copyWith(_viewState.value + 1);
    notifyListeners();
  }

  void onDecrement() {
    _viewState = _viewState.copyWith(_viewState.value - 1);
    notifyListeners();
  }

  String getCurrentValue() {
    return "${_viewState.value}";
  }
}

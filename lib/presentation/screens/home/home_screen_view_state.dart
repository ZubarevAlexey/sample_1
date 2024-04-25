class HomeScreenViewState {
  final int value;

  HomeScreenViewState({required this.value});

  factory HomeScreenViewState.init() {
    return HomeScreenViewState(value: 0);
  }
  HomeScreenViewState copyWith(int? value) {
    return HomeScreenViewState(value: value ?? this.value);
  }
}

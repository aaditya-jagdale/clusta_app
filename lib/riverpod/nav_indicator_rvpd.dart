import 'package:flutter_riverpod/legacy.dart';

final navIndexProvider = StateNotifierProvider<NavBarProvider, int>((ref) {
  return NavBarProvider();
});

class NavBarProvider extends StateNotifier<int> {
  NavBarProvider() : super(0);

  void setIndex(int index) {
    state = index;
  }
}

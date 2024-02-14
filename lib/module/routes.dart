import 'module.dart';

class AppRoutes {
  static navigation({required String path, dynamic argument}) {
    ModularRoutes.navigate(path: path, arguments: argument);
  }

  static pushNamed({required String path, dynamic argument}) {
    ModularRoutes.pushNamed(path: path, arguments: argument);
  }

  static pop() {
    ModularRoutes.pop();
  }

  static String path() {
    return ModularRoutes.path();
  }

  static bool canPop() {
    return ModularRoutes.canPop();
  }
}

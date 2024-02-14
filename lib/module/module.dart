import 'package:flutter_modular/flutter_modular.dart';

abstract class BaseModule extends Module {
  BaseModule() {
    nameRoutes();
  }

  nameRoutes() {}

  @override
  List<Module> get imports => const [];

  @override
  void binds(i) {}
  @override
  void exportedBinds(i) {}

  @override
  void routes(r) {}
}

class ModularRoutes {
  static canPop() => Modular.to.canPop();
  static pop() => Modular.to.pop();
  static navigate({required String path, dynamic arguments}) =>
      Modular.to.navigate(path, arguments: arguments);
  static pushNamed({required String path, dynamic arguments}) =>
      Modular.to.pushNamed(path, arguments: arguments);
  static path() => Modular.to.path;
}

class ModularSinglito {
  static T get<T extends Object>({String? key}) => Modular.get<T>();
  static routeInformationParser() => Modular.routeInformationParser;
  static routerDelegate() => Modular.routerDelegate;
  static routerOutlet() => RouterOutlet();
}

class BaseModuleRoute {
  static module(String path, {required module}) => ModuleRoute(
        path,
        module: module,
        //   transition: TransitionType.fadeIn,
        // duration:const Duration(milliseconds: 500)
      );
  static child(String path, {required child}) => ChildRoute(
        path,
        child: child,
        //   transition: TransitionType.fadeIn,
        // duration:const Duration(milliseconds: 500)
      );
}

import '../module/routes.dart';

class Route<T> {
  String? module;
  String? route;
  T tag;

  Route({this.route, required this.tag, required this.module});
}

class StaticRoutes {
  static String initial = "/";
  static final List<Route> _routes = [];

  static set routes(Map<String,List<Route>> route) {
    bool isFrist = _routes.isEmpty;
    String parentPath = route.keys.first;
    Route? parent;
    if(!isFrist){
      parent = _routes.firstWhere((element) => element.module == parentPath,orElse:() => _routes[0]);
    }
    for (var r in route[parentPath]!.toList()) {
      var index = _routes.indexWhere((element) => element.tag == r.tag);

      if (index == -1) {
      if (isFrist) {
          r.route = "/${r.module?.replaceAll("/", "")}";
        }else{
          r.route = "${parent!.route}/${(r.module)?.replaceAll("//", "/")}".replaceAll("//", "/");
        }
        
        
        _routes.add(r);
      }
    }
  }

  static get<T>(T tag) {
    int r = _routes.indexWhere(
      (element) => element.tag == tag,
    );

    if (r == -1) {
      return AppRoutes.path();
    } else {
     
      return _routes[r].route;
    }
  }

  static module<T>(T tag) {
    int r = _routes.indexWhere(
      (element) => element.tag == tag,
    );

    if (r == -1) {
      return "/";
    } else {
      return "/${_routes[r].module}";
    }
  }
}

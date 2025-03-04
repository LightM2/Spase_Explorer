abstract class SpaseRoutes {
  static const news = SpaseRoute(name: 'news', isParent: true);
  static const newsDetails =
      SpaseRoute(name: 'newsDetails', pathParameter: 'id');
  static const launches = SpaseRoute(name: 'launches', isParent: true);
  static const launchDetails =
      SpaseRoute(name: 'launchDetails', pathParameter: 'id');
  static const events = SpaseRoute(name: 'events', isParent: true);
  static const eventsDetails =
      SpaseRoute(name: 'eventsDetails', pathParameter: 'id');
}

class SpaseRoute {
  const SpaseRoute({
    required this.name,
    this.isParent = false,
    this.pathParameter,
  });

  final String name;
  final bool isParent;
  final String? pathParameter;

  String get _parameterPath => pathParameter != null ? '/:$pathParameter' : '';

  String get path => '${isParent ? '/' : ''}$name$_parameterPath';
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../bloc/router/router_bloc.dart';
import '../../utils/route_generator.dart';
import '../components/nested_navigator.dart';
import 'root_screen.dart';

class GenericMainScreen<Router extends RouterBloc> extends StatelessWidget {
  final Widget initialScreen;
  final Widget? routeNotFoundScreen;

  final RouteGenerator routeGenerator;

  GenericMainScreen({
    super.key,
    required this.initialScreen,
    this.routeNotFoundScreen,
    required String routeGenerator,
  }) : routeGenerator = GetIt.I.get(instanceName: routeGenerator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedNavigator(
        initialScreen: RootScreen<Router>(
          child: initialScreen,
        ),
        onGenerateRoute: (settings) {
          if (routeNotFoundScreen == null) {
            return routeGenerator.generateRoute(settings);
          }

          final undefinedRoute = MaterialPageRoute(builder: (_) => routeNotFoundScreen!);

          return routeGenerator.generateRoute(settings) ?? undefinedRoute;
        },
      ),
    );
  }
}

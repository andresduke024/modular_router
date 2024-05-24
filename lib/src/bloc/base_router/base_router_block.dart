import 'package:flutter_bloc/flutter_bloc.dart';

import '../../base/modular_router_global_config_provider.dart';
import '../router/router_action_handler_type.dart';
import '../router/router_bloc.dart';
import '../router/router_events.dart';
import '../router/router_state.dart';

class BaseRouterBloc extends RouterBloc {
  @override
  List<String> get routes => ModularRouterGlobalConfigProvider().get()?.baseRoutes ?? [];

  BaseRouterBloc();

  @override
  void onPushRequested(PushRequest event, Emitter<RouterState> emit) {
    final status = mapPushEventToState(event, type: RouterActionHandlerType.self);

    emit(RouterState.push(status: status));
  }
}

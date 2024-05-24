library modular_router;

// Base

export 'src/base/modular_router_global_config.dart' show ModularRouterGlobalConfig;

export 'src/base/modular_router_global_config_provider.dart' show ModularRouterGlobalConfigProvider;

// BLoC
export './src/bloc/router/router_bloc.dart' show RouterBloc;

export './src/bloc/base_router/base_router_block.dart' show BaseRouterBloc;

export './src/bloc/router/router_action_handler_type.dart' show RouterActionHandlerType;

export './src/bloc/router/router_events.dart' show RouterEvent, PopRequest, PushRequest;

export './src/bloc/router/router_push_action_type.dart'
    show RouterPushActionType, RouterPushAndRemoveUntilActionType, RouterPushRegularActionType;

export './src/bloc/router/router_state.dart'
    show InitialRouterStatus, RouterState, RouterStatus, RouterPopStatus, RouterPushStatus;

// Components

export './src/ui/components/nested_navigator.dart' show NestedNavigator;

export './src/ui/screens/root_screen.dart' show RootScreen;

// Screens

export './src/ui/screens/generic_main_screen.dart' show GenericMainScreen;

// Utils

export './src/utils/route_generator.dart' show RouteGenerator, ExtendedRouteGenerator;

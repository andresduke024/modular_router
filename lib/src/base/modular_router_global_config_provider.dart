import 'modular_router_global_config.dart';

final class ModularRouterGlobalConfigProvider {
  ModularRouterGlobalConfig? _globalConfig;

  ModularRouterGlobalConfigProvider._();

  static final ModularRouterGlobalConfigProvider _instance = ModularRouterGlobalConfigProvider._();

  factory ModularRouterGlobalConfigProvider() {
    return _instance;
  }

  void set(ModularRouterGlobalConfig globalConfig) {
    _globalConfig = globalConfig;
  }

  ModularRouterGlobalConfig? get() => _globalConfig;
}

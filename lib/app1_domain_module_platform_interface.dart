import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app1_domain_module_method_channel.dart';

abstract class App1DomainModulePlatform extends PlatformInterface {
  /// Constructs a App1DomainModulePlatform.
  App1DomainModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App1DomainModulePlatform _instance = MethodChannelApp1DomainModule();

  /// The default instance of [App1DomainModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp1DomainModule].
  static App1DomainModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App1DomainModulePlatform] when
  /// they register themselves.
  static set instance(App1DomainModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

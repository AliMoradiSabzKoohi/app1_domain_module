import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app1_domain_module_platform_interface.dart';

/// An implementation of [App1DomainModulePlatform] that uses method channels.
class MethodChannelApp1DomainModule extends App1DomainModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app1_domain_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

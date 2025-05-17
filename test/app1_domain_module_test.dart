import 'package:flutter_test/flutter_test.dart';
import 'package:app1_domain_module/app1_domain_module.dart';
import 'package:app1_domain_module/app1_domain_module_platform_interface.dart';
import 'package:app1_domain_module/app1_domain_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp1DomainModulePlatform
    with MockPlatformInterfaceMixin
    implements App1DomainModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App1DomainModulePlatform initialPlatform = App1DomainModulePlatform.instance;

  test('$MethodChannelApp1DomainModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp1DomainModule>());
  });

  test('getPlatformVersion', () async {
    App1DomainModule app1DomainModulePlugin = App1DomainModule();
    MockApp1DomainModulePlatform fakePlatform = MockApp1DomainModulePlatform();
    App1DomainModulePlatform.instance = fakePlatform;

    expect(await app1DomainModulePlugin.getPlatformVersion(), '42');
  });
}

import 'package:textiffi/flavor_config.dart';
import 'package:textiffi/main.dart';

void main() {
  FlavorConfig(
    appTitle: 'Textiffi Dev',
    apiEndpoint: '',
    packageName: 'com.westegg.textiffi.dev',
    isDevelopment: true,
  );
  mainCommon();
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('polyvox_filament');

  TestWidgetsFlutterBinding.ensureInitialized();

  test('getPlatformVersion', () async {});
}

import 'dart:io';
import 'package:flutter/foundation.dart';
import '../config/environment.dart';

class FlavorUtils {
  static Environment getEnvironment() {
    if (kDebugMode) {
      // 디버그 모드에서는 환경 변수나 빌드 설정을 확인
      return _getEnvironmentFromBuildConfig();
    } else {
      // 릴리즈 모드에서는 기본값 사용
      return Environment.dev;
    }
  }

  static Environment _getEnvironmentFromBuildConfig() {
    // Android의 경우
    if (Platform.isAndroid) {
      // AndroidManifest.xml에서 메타데이터를 읽거나
      // build.gradle에서 설정한 값을 확인
      return Environment.dev; // 기본값
    }
    // iOS의 경우
    else if (Platform.isIOS) {
      // Info.plist에서 설정값을 확인
      return Environment.dev; // 기본값
    }

    return Environment.dev;
  }
}

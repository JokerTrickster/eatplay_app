# EatPlay App

EatPlay는 Flutter로 개발된 모바일 애플리케이션입니다. Clean Architecture와 MVVM 패턴을 기반으로 구축되었습니다.

## 📱 프로젝트 개요

- **플랫폼**: iOS, Android
- **언어**: Dart
- **프레임워크**: Flutter
- **아키텍처**: Clean Architecture + MVVM
- **상태 관리**: flutter_bloc
- **의존성 주입**: GetIt

## 🏗️ 아키텍처

### Clean Architecture
이 프로젝트는 Clean Architecture의 3개 레이어로 구성되어 있습니다:

```
lib/
├── core/                          # 공통 코드
│   ├── di/                        # 의존성 주입
│   ├── error/                     # 에러 처리
│   ├── network/                   # 네트워크 유틸리티
│   └── utils/                     # 유틸리티 함수
├── features/                      # 기능별 모듈
│   └── auth/                      # 인증 기능
│       ├── data/                  # 데이터 레이어
│       │   ├── datasources/       # 데이터 소스
│       │   ├── models/            # 데이터 모델
│       │   └── repositories/      # 리포지토리 구현
│       ├── domain/                # 도메인 레이어
│       │   ├── entities/          # 엔티티
│       │   ├── repositories/      # 리포지토리 인터페이스
│       │   └── usecases/          # 유스케이스
│       └── presentation/          # 프레젠테이션 레이어
│           ├── bloc/              # 상태 관리
│           ├── pages/             # 페이지
│           └── widgets/           # 위젯
└── main.dart                      # 앱 진입점
```

이 README는 프로젝트의 구조, 아키텍처, 실행 방법, 그리고 현재 구현된 기능들을 포함하고 있습니다. 필요에 따라 추가 정보나 수정사항을 말씀해 주세요!

### MVVM 패턴
- **Model**: Domain 엔티티와 비즈니스 로직
- **View**: UI 컴포넌트 (Pages, Widgets)
- **ViewModel**: Bloc을 통한 상태 관리

## 📱 실행 방법

### 필수 요구사항
- Flutter SDK 3.2.3 이상
- Dart SDK 3.2.3 이상
- Android Studio / VS Code
- iOS 개발을 위한 Xcode (macOS)

### 설치 및 실행

1. **저장소 클론**
```bash
git clone [repository-url]
cd eatplay_app
```

2. **의존성 설치**
```bash
flutter pub get
```

3. **코드 생성** (Freezed 모델 생성)
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

4. **앱 실행**
```bash
# iOS 시뮬레이터에서 실행
flutter run

# Android 에뮬레이터에서 실행
flutter run

# 특정 디바이스에서 실행
flutter devices
flutter run -d [device-id]
```

## 📱 주요 의존성

### 핵심 패키지
- **flutter_bloc**: 상태 관리
- **get_it**: 의존성 주입
- **dartz**: 함수형 프로그래밍 (Either 타입)
- **freezed**: 불변 데이터 클래스
- **equatable**: 값 비교

### 네트워크 & 저장소
- **http**: HTTP 클라이언트
- **shared_preferences**: 로컬 저장소
- **internet_connection_checker**: 네트워크 연결 확인

### 개발 도구
- **build_runner**: 코드 생성
- **freezed**: 불변 클래스 생성
- **json_serializable**: JSON 직렬화
- **mockito**: 테스트 모킹

## 🔧 개발 환경 설정

### Android 설정
`android/app/build.gradle.kts`에 NDK 버전 설정:
```kotlin
android {
    ndkVersion = "27.0.12077973"
    // ... 기타 설정
}
```

### iOS 설정
iOS 개발을 위해서는 Xcode가 필요하며, iOS 시뮬레이터나 실제 디바이스에서 테스트할 수 있습니다.

## 📱 테스트

### 단위 테스트 실행
```bash
flutter test
```

### 특정 테스트 파일 실행
```bash
flutter test test/widget_test.dart
```

## 📱 현재 구현된 기능

### 인증 시스템
- ✅ 로그인 화면
- ✅ 이메일/비밀번호 검증
- ✅ 자동 로그인 기능
- ✅ 로컬 캐싱
- ✅ 네트워크 상태 확인
- ✅ 에러 처리

### UI/UX
- ✅ 반응형 디자인
- ✅ 로딩 상태 표시
- ✅ 에러 메시지 표시
- ✅ 폼 검증

## 📱 상태 관리

### Bloc 패턴 사용
- **AuthBloc**: 인증 상태 관리
- **Event**: 사용자 액션 (로그인, 로그아웃 등)
- **State**: UI 상태 (로딩, 성공, 에러 등)

### 상태 예시
```dart
// 로딩 상태
const AuthState.loading()

// 인증 성공 상태
AuthState.authenticated(user)

// 에러 상태
AuthState.error(failure)
```

## 🛠️ 개발 가이드라인

### 코드 스타일
- Clean Architecture 원칙 준수
- SOLID 원칙 적용
- 의미있는 네이밍
- 적절한 주석 작성

### 에러 처리
- Either<Failure, Success> 패턴 사용
- 구체적인 에러 타입 정의
- 사용자 친화적인 에러 메시지

### 테스트
- 단위 테스트 작성 권장
- Bloc 테스트
- 위젯 테스트

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다.

## 🤝 기여하기

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📬 문의

프로젝트에 대한 문의사항이 있으시면 이슈를 생성해 주세요.

---

**버전**: 1.0.0  
**최종 업데이트**: 2024년 12월
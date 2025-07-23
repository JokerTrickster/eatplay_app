import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../../core/di/injection_container.dart' as di;
import '../../../auth/domain/usecases/get_remember_me_usecase.dart';
import '../../../auth/data/datasources/auth_local_datasource.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _autoLoginEnabled = false; // 초기값을 false로 설정

  @override
  void initState() {
    super.initState();
    _loadAutoLoginSetting();
  }

  void _loadAutoLoginSetting() async {
    try {
      final result = await di.getIt<GetRememberMeUseCase>()();
      result.fold(
        (failure) {
          // 에러 처리
        },
        (rememberMe) {
          setState(() {
            _autoLoginEnabled = rememberMe;
          });
        },
      );
    } catch (e) {
      // 에러 처리
    }
  }

  void _toggleAutoLogin(bool value) async {
    setState(() {
      _autoLoginEnabled = value;
    });

    // SharedPreferences에 설정 저장
    try {
      await di.getIt<AuthLocalDataSource>().saveRememberMe(value);
    } catch (e) {
      // 에러 처리
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () {
            // 로그아웃 상태가 되면 로그인 페이지로 이동
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('설정'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 프로필 섹션
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange.shade100,
                      child: const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '테스트 사용자',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'test@test.com',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 설정 메뉴
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person_outline),
                    title: const Text('계정 정보'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 계정 정보 페이지로 이동
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.lock_outline),
                    title: const Text('패스워드 변경'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 패스워드 변경 페이지로 이동
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.description_outlined),
                    title: const Text('이용약관 및 정책'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 이용약관 페이지로 이동
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.login_outlined),
                    title: const Text('자동 로그인'),
                    trailing: Switch(
                      value: _autoLoginEnabled,
                      onChanged: _toggleAutoLogin,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 로그아웃 버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _showLogoutDialog(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  '로그아웃',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext outerContext) {
    showDialog(
      context: outerContext,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('로그아웃'),
          content: const Text('로그아웃 하시겠습니까?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('아니요'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                outerContext.read<AuthBloc>().add(const AuthEvent.logout());
              },
              child: const Text(
                '예',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}

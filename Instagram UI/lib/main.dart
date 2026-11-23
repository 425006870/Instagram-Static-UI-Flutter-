import 'package:material_ui/material_ui.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

const String _screen = String.fromEnvironment('SCREEN', defaultValue: 'login');

void main() => runApp(const StaticUiApp());

class StaticUiApp extends StatelessWidget {
  const StaticUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static UI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: _screen == 'forgot'
          ? const ForgotPasswordScreen()
          : const LoginScreen(),
    );
  }
}

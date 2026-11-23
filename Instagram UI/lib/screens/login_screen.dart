import 'package:material_ui/material_ui.dart';

import '../theme/app_theme.dart';
import '../widgets/common_widgets.dart';

/// Screen 1: Log in (Figma frame "instagram-login").
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Language selector: Row of text + icon.
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'English (US)',
                    style: textTheme.bodySmall?.copyWith(fontSize: 13),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                    color: AppColors.muted,
                  ),
                ],
              ),
            ),

            // Main form. Scrollable so small phones never overflow.
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Instagram',
                        textAlign: TextAlign.center,
                        style: textTheme.displayLarge,
                      ),
                      const SizedBox(height: 40),
                      const StaticField(
                        hint: 'Phone number, username, or email',
                      ),
                      const SizedBox(height: 12),
                      const StaticField(
                        hint: 'Password',
                        trailing: Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                          color: AppColors.text,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot password?',
                          style: textTheme.bodySmall?.copyWith(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const PrimaryButton(label: 'Log in'),
                      const SizedBox(height: 16),
                      const OrDivider(),
                      const SizedBox(height: 20),
                      const FacebookLoginRow(),
                    ],
                  ),
                ),
              ),
            ),

            // Footer.
            BottomBar(
              children: [
                Text(
                  "Don't have an account? ",
                  style: textTheme.bodySmall?.copyWith(fontSize: 13),
                ),
                Text(
                  'Sign up',
                  style: textTheme.bodySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:material_ui/material_ui.dart';

import '../theme/app_theme.dart';
import '../widgets/common_widgets.dart';

/// Screen 2: Trouble logging in (Figma frame "forgot-password").
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Stack: lock image in a circle with a "help" badge
                      // layered at the bottom-right with Positioned.
                      Center(
                        child: SizedBox(
                          width: 96,
                          height: 96,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.text,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/images/lock.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 2,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.question_mark,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Trouble logging in?',
                        textAlign: TextAlign.center,
                        style: textTheme.titleMedium,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Enter your email, phone, or username and we'll "
                        'send you a link to get back into your account.',
                        textAlign: TextAlign.center,
                        style: textTheme.bodySmall?.copyWith(
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const StaticField(hint: 'Email, phone, or username'),
                      const SizedBox(height: 12),
                      const PrimaryButton(label: 'Next'),
                      const SizedBox(height: 16),
                      const OrDivider(),
                      const SizedBox(height: 20),
                      const FacebookLoginRow(),
                    ],
                  ),
                ),
              ),
            ),

            BottomBar(
              children: [
                Text(
                  'Back to log in',
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

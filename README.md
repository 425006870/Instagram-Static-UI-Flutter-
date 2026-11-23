## Instagram-Static-UI-Flutter- ##
Two non-interactive mobile apps that have been developed from my Week 1-2 Figma wireframes. This is an individual lab exercise for Flutter Foundations & Static UI (Part 2) (CO4: develop Flutter UIs using widgets and layout).

## Screens 

# Screen 1: Log in
Login screen 
Figma frame instagram-login

# Screen 2: Trouble logging in
Forgot password screen
Figma frame forgot-password

Both screens belong to the same app concept and share one theme, so they look like one product.

# Features used
MaterialApp with a shared ThemeData
StatelessWidget screens
Column, Row, Container, Text, Icon
Stack and Positioned
Local image asset (assets/images/lock.png)
Padding, SizedBox, Expanded

# How to run
flutter create . --project-name instagram_static_ui
flutter pub get

flutter run -d chrome                               # Screen 1
flutter run -d chrome --dart-define=SCREEN=forgot   # Screen 2

# Widget tree
See docs/Widget_Tree.pdf.


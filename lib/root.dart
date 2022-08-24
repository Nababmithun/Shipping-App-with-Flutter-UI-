import 'package:flutter/material.dart';
import 'package:interport/features/auth/view/login_page.dart';
import 'package:interport/res/resources/colors.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interport',
      theme: ThemeData(
        primarySwatch: AppTheme.primarySwatchColor,
      ),
      home: const LoginPage(),
    );
  }
}

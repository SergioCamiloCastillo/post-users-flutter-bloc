import 'package:flutter/material.dart';
import 'package:posts_flutter_bloc/config/router/app_router.dart';
import 'package:posts_flutter_bloc/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: "Post flutter bloc",
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}

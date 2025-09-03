import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:shopease/core/theme/theme.dart';
import 'features/auth/presentation/welcome_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => const ShopEaseApp(),
    ),
  );
}

class ShopEaseApp extends StatelessWidget {
  const ShopEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopEase',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, 
      locale: DevicePreview.locale(context), 
      builder: DevicePreview.appBuilder, 
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textLight,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.textLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

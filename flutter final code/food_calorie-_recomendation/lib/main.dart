import 'package:flutter/material.dart';
import 'package:food_calorie_recognition/presentation/check_calorie/controller/check_calorie_controller.dart';
import 'package:food_calorie_recognition/presentation/new_check_calorie/response_from_api.dart';
import 'package:food_calorie_recognition/presentation/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(providers: [
       
        ChangeNotifierProvider(create: (context) => CheckcalorieController()),
      ],
        child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

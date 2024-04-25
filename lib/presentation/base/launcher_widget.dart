import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_1/presentation/screens/home/home_screen.dart';
import 'package:sample_1/presentation/screens/home/home_screen_view_model.dart';

class LauncherWidget extends StatelessWidget {
  const LauncherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => HomeScreenViewModel(),
        child: const HomeScreen(),
      ),
    );
  }
}

import 'package:chat_pot/features/home/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static dynamic route() =>
      MaterialPageRoute(builder: (context) => const HomeScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomeScreenBody()));
  }
}

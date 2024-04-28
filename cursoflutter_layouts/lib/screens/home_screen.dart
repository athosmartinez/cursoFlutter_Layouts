
import 'package:cursoflutter_layouts/components/sections/account_actions.dart';
import 'package:cursoflutter_layouts/components/sections/account_points.dart';
import 'package:cursoflutter_layouts/components/sections/header.dart';
import 'package:cursoflutter_layouts/components/sections/recenty_activity.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
          RecentActivity(),
          AccountAction(),
          AccountPoints()
        ],
      ),
    );
  }
}

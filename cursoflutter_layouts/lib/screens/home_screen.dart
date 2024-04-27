import 'package:cursoflutter_layouts/components/box_card.dart';
import 'package:cursoflutter_layouts/components/color_dot.dart';
import 'package:cursoflutter_layouts/components/sections/account_actions.dart';
import 'package:cursoflutter_layouts/components/sections/header.dart';
import 'package:cursoflutter_layouts/components/sections/recenty_activity.dart';
import 'package:cursoflutter_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Header(), RecentActivity(), AccountAction()],
      ),
    );
  }
}

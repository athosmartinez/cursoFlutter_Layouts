import 'package:cursoflutter_layouts/components/box_card.dart';
import 'package:cursoflutter_layouts/components/sections/header.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Header(), BoxCard(boxContent: Text("Text"))],
      ),
    );
  }
}

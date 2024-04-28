import 'package:cursoflutter_layouts/components/box_card.dart';
import 'package:cursoflutter_layouts/components/color_dot.dart';
import 'package:cursoflutter_layouts/components/content_division.dart';
import 'package:cursoflutter_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: BoxCard(
        boxContent: _RecentActivity(),
      ),
    );
  }
}

class _RecentActivity extends StatelessWidget {
  const _RecentActivity();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text(
                      style: Theme.of(context).textTheme.bodyLarge,
                      "\$9900.97",
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrada"),
                    Text(
                      style: Theme.of(context).textTheme.bodyLarge,
                      "\$9900.97",
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8),
          child: Text("Limite de gastos: \$ 432.92"),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8),
          child: ContentDivision(),
        ),
        Text(
          style: Theme.of(context).textTheme.bodyMedium,
          "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!",
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Diga-me como!",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}

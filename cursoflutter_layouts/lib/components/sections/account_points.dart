import 'package:cursoflutter_layouts/components/box_card.dart';
import 'package:cursoflutter_layouts/components/color_dot.dart';
import 'package:cursoflutter_layouts/components/content_division.dart';
import 'package:cursoflutter_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            "Pontos da conta",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: BoxCard(
            boxContent: _AccountPointsContent(),
          ),
        )
      ],
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Pontos totais"),
                Text(
                  style: Theme.of(context).textTheme.bodyLarge,
                  "3000",
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8),
          child: ContentDivision(),
        ),
        Text(
          style: Theme.of(context).textTheme.titleMedium,
          "Objetivos:",
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.accountPoints['first']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      style: Theme.of(context).textTheme.bodyMedium,
                      "Entrega grátis: 15000pts",
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.accountPoints['second']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      style: Theme.of(context).textTheme.bodyMedium,
                      "1 mês de streaming: 30000pts",
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:cursoflutter_layouts/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountAction extends StatelessWidget {
  const AccountAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            "Ações da conta",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxCard(
                boxContent: Container(
                  height: 75,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wallet),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("Depositar"),
                      ),
                    ],
                  ),
                ),
              ),
              BoxCard(
                boxContent: Container(
                  height: 75,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sync),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("Transferir"),
                      ),
                    ],
                  ),
                ),
              ),
              BoxCard(
                boxContent: Container(
                  height: 75,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.center_focus_strong),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("Ler"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

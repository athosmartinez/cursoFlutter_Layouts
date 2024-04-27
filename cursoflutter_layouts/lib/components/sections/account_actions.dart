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
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxCard(
                boxContent: _AccountActionsContent(
                    icon: Icon(Icons.wallet), text: "Depositar"),
              ),
              BoxCard(
                boxContent: _AccountActionsContent(
                    icon: Icon(Icons.sync), text: "Transferir"),
              ),
              BoxCard(
                boxContent: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong), text: "Ler"),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

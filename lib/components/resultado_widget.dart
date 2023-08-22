import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSize {
  final bool? venceu;
  final VoidCallback onReiniciar;

  const ResultadoWidget({
    super.key,
    required this.venceu,
    required this.onReiniciar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: _getCor(),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                _getIcon(),
                color: Colors.black,
                size: 35
              ),
              onPressed: onReiniciar,
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIcon() {
    if (venceu == null) {
      return Icons.sentiment_satisfied;
    } else if (venceu == true) {
      return Icons.sentiment_very_satisfied;
    } else {
      return Icons.sentiment_very_dissatisfied;
    }
  }

  _getCor() {
    if (venceu == null) {
      return Colors.yellow;
    } else if (venceu == true) {
      return Colors.green[300];
    } else {
      return Colors.red[300];
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget get child => throw UnimplementedError();
}

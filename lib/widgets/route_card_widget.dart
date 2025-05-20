import 'package:flutter/material.dart';

// Widget que representa um "card" com o nome de uma rota e botões de navegação
class RouteCardWidget extends StatelessWidget {
  // Icones
  final IconData iconData;

  // Nome interno da rota (ex: '/bahia')
  final String routeName;

  // Texto legível que será exibido no card (ex: 'Bahia')
  final String label;

  const RouteCardWidget({
    super.key,
    required this.iconData,
    required this.routeName,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          // Botão para pushNamed (navegação simples com retorno)
          _buildButton(context, iconData, label, () {
            Navigator.pushNamed(context, routeName);
          }),
        ],
      ),
    );
  }

  // Função auxiliar para criar um botão de navegação com rótulo e ação
  Widget _buildButton(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 4,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(14),
          ),
          child: Column(children: [Icon(icon, size: 24)]),
        ),
        const SizedBox(height: 4),
        Text(label,
        style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 3, 48, 84)),)
      ],
    );
  }
}

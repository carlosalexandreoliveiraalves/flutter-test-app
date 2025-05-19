import 'package:flutter/material.dart';

// Widget que representa um "card" com o nome de uma rota e botões de navegação
class RouteCardWidget extends StatelessWidget {
  // Nome interno da rota (ex: '/bahia')
  final String routeName;

  // Texto legível que será exibido no card (ex: 'Bahia')
  final String label;

  const RouteCardWidget({
    super.key,
    required this.routeName,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // sombra do card
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(12), // espaço interno do card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // alinha os itens à esquerda
          children: [
            // Título da rota no card
            Text(label),

            const SizedBox(height: 8), // espaço entre o título e os botões

            // Linha com os botões de navegação
            Wrap(
              spacing: 8, // espaço horizontal entre botões
              runSpacing: 8, // espaço vertical se quebrar linha
              children: [
                // Botão para pushNamed (navegação simples com retorno)
                _buildButton(context, 'pushNamed', () {
                  Navigator.pushNamed(context, routeName);
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Função auxiliar para criar um botão de navegação com rótulo e ação
  Widget _buildButton(
    BuildContext context,
    String label,
    VoidCallback onPressed,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
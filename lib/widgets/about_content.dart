import 'package:flutter/material.dart';

// Widget que representa um "card" com o nome de uma rota e botões de navegação
class AboutContent extends StatelessWidget {
  // Icones
  final IconData iconData;

  // Nome interno da rota (ex: '/bahia')
  final String routeName;

  // Texto legível que será exibido no card (ex: 'Bahia')
  final String label;

  const AboutContent({
    super.key,
    required this.iconData,
    required this.routeName,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        child: Column(
          children: [

          ],
        ),
      );
  }

  // Função auxiliar para criar um botão de navegação com rótulo e ação
  
  Widget mainImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: 
      ),
    );
  }
  
}

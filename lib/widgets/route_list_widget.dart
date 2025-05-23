import 'package:flutter/material.dart';
import 'package:first_work_flutter_application/widgets/route_card_widget.dart'; // Card com os botões de navegação
import '../routes/app_routes.dart'; // Arquivo onde as rotas nomeadas estão definidas

// Widget responsável por listar todas as rotas disponíveis (exceto a inicial)
// Cada rota é representada por um card interativo
class RouteListWidget extends StatelessWidget {
  const RouteListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Filtra a lista de rotas, removendo a rota inicial (Brasil)
    final routeEntries =
        AppRoutes.routes.entries
            .where((entry) => entry.key != AppRoutes.initial)
            .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Lista com separadores entre os cards de rota
        SingleChildScrollView(
          child: Row(
            children:
                routeEntries.map((entry) {
                  final routeName = entry.key;
                  final iconData = AppRoutes.iconRoutes[routeName];
                  final label = _formatRouteName(routeName);

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ), // Espaço entre os cards
                    child: RouteCardWidget(
                      iconData: iconData ?? Icons.help_outline,
                      routeName: routeName,
                      label: label,
                    ),
                  );
                }).toList(),
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }

  // Método auxiliar para formatar o nome da rota para um texto legível
  // Ex: '/minas-gerais' → 'Minas Gerais'
  String _formatRouteName(String route) {
    return route
        .replaceAll('/', '') // Remove a barra inicial
        .replaceAll('-', ' ') // Substitui hífens por espaços
        .replaceAllMapped(
          // Coloca a primeira letra de cada palavra em maiúscula
          RegExp(r'\b\w'),
          (match) => match.group(0)!.toUpperCase(),
        );
  }
}

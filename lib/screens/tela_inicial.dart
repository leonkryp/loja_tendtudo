
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                // Conteúdo principal
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // CABEÇALHO
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xFFDCE5F5),
                              child: Icon(Icons.person,
                                  color: Colors.blueGrey),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Loja TendTudo',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_none),
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // PESQUISA
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Buscar produtos...',
                            prefixIcon: const Icon(Icons.search),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // OFERTAS
                        const Text(
                          'Ofertas Especiais',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 10),

                        Container(
                          height: 145,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFB9C5E0),
                                Color(0xFF24549B),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          padding: const EdgeInsets.all(18),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '50%',
                                style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Semana Black Friday',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'BLACK FRIDAY',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        // CATEGORIAS
                        const Text(
                          'Categorias',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 15),

                        GridView.count(
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.85,
                          children: const [
                            CategoriaItem(
                              icone: Icons.checkroom,
                              nome: 'Vestuário',
                            ),
                            CategoriaItem(
                              icone: Icons.directions_run,
                              nome: 'Calçados',
                            ),
                            CategoriaItem(
                              icone: Icons.shopping_bag,
                              nome: 'Bolsas',
                            ),
                            CategoriaItem(
                              icone: Icons.devices,
                              nome: 'Eletrônicos',
                            ),
                            CategoriaItem(
                              icone: Icons.watch,
                              nome: 'Relógios',
                            ),
                            CategoriaItem(
                              icone: Icons.diamond,
                              nome: 'Joias',
                            ),
                            CategoriaItem(
                              icone: Icons.kitchen,
                              nome: 'Cozinha',
                            ),
                            CategoriaItem(
                              icone: Icons.toys,
                              nome: 'Brinquedos',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // MENU INFERIOR
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black12),
                    ),
                  ),
                  child: NavigationBar(
                    selectedIndex: 0,
                    height: 65,
                    labelBehavior:
                        NavigationDestinationLabelBehavior.alwaysShow,
                    destinations: const [
                      NavigationDestination(
                        icon: Icon(Icons.home_outlined),
                        label: 'Início',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.shopping_cart_outlined),
                        label: 'Carrinho',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.menu),
                        label: 'Menu',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: 'Produtos',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.person_outline),
                        label: 'Usuário',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// COMPONENTE DAS CATEGORIAS
class CategoriaItem extends StatelessWidget {
  final IconData icone;
  final String nome;

  const CategoriaItem({
    super.key,
    required this.icone,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            icone,
            color: Colors.black87,
            size: 26,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          nome,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}

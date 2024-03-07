import 'package:flutter/material.dart';

class UitlegPage extends StatelessWidget {
  const UitlegPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uitleg Pagina'),
      ),
      body: Center(
        child: const Text('Dit is de uitleg pagina!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Index van de huidige pagina, verander indien nodig
        onTap: (index) {
          // Navigatie naar andere pagina's
          // Voeg hier eventuele navigatielogica toe
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Ontdek',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profiel',
          ),
        ],
      ),
    );
  }
}

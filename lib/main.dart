import 'package:flutter/material.dart';
import 'ontdek_page.dart'; // Importeer OntdekPage class
import 'profiel_page.dart'; // Importeer ProfielPage class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RolRadar',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageOne(),
    OntdekPage(), // Gebruik OntdekPage
    ProfielPage(), // Gebruik ProfielPage
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
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

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // Plaatst de inhoud van de widget in het midden van het scherm
      child: Column(
        // Een widget die zijn kinderen verticaal onder elkaar plaatst
        mainAxisAlignment:
            MainAxisAlignment.center, // Centreert de kolom in de verticale as
        children: [
          // Lijst van widgets die verticaal onder elkaar worden geplaatst
          const SizedBox(height: 20), // Een lege ruimte van 20 pixels hoogte
          Container(
            // Een rechthoekige doos voor meer lay-out
            padding: const EdgeInsets.all(
                16), // Vulling van 16 pixels aan alle kanten van de doos
            decoration: BoxDecoration(
              // Decoratie voor de doos, zoals achtergrondkleur en rand
              color: Colors.grey[200], // Achtergrondkleur lichtgrijs
              borderRadius:
                  BorderRadius.circular(10), // Afgeronde hoeken van 10 pixels
            ),
            child: Column(
              // Een andere kolom van widgets binnen de doos
              children: [
                const Text(
                  // Tekstwidget met de tekst binnen de doos
                  'Dit is een tekst in de box!', // Tekst binnen de doos
                  style: TextStyle(fontSize: 16), // Lettergrootte van 16 pixels
                ),
                const SizedBox(
                    height: 10), // Een lege ruimte van 10 pixels hoogte
                ElevatedButton(
                  // Een verhoogde knopwidget
                  onPressed: () {
                    // Functie voor wat er moet gebeuren wanneer de knop wordt ingedrukt
                  },
                  child:
                      const Text('Klik hier'), // Tekst op de knop: 'Klik hier'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

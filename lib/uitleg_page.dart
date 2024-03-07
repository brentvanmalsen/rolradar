import 'package:flutter/material.dart';

class UitlegPage extends StatefulWidget {
  const UitlegPage({Key? key}) : super(key: key);

  @override
  State<UitlegPage> createState() => _UitlegPageState();
}

class _UitlegPageState extends State<UitlegPage> {
  String? selectedFunction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1560BD),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: const Color(0xFF1560BD),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Uitleg',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'De Belbin-rol analyse test is een korte en effectieve manier om jouw teamrol binnen een team te ontdekken. Door middel van scenario-vragen word je uitgedaagd om te reageren op verschillende situaties die zich in een team kunnen voordoen. De test duurt ongeveer 15 minuten en biedt inzicht in jouw natuurlijke neigingen en sterke punten binnen een teamomgeving.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'RobotoLight',
                      ),
                    ),
                    const SizedBox(height: 20),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Functie',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      value: selectedFunction,
                      onChanged: (newValue) {
                        setState(() {
                          selectedFunction = newValue!;
                        });
                      },
                      items: <String>[
                        'Functie 1',
                        'Functie 2',
                        'Functie 3',
                        'Functie 4',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Voeg hier de navigatielogica toe
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(222, 119, 34, 1),
                        foregroundColor: Color.fromARGB(255, 250, 250, 249),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('Start de test'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
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

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:vibration/vibration.dart'; // Importeer het vibration package

class UitlegPage extends StatefulWidget {
  const UitlegPage({Key? key}) : super(key: key);

  @override
  State<UitlegPage> createState() => _UitlegPageState();
}

class _UitlegPageState extends State<UitlegPage> {
  String? selectedFunction;
  late AudioCache audioCache;
  bool functionSelected = false;

  @override
  void initState() {
    super.initState();
    audioCache = AudioCache(prefix: 'assets/');
  }

  void _playConfirmationSound() {
    audioCache.play('bevestig.mp3');
  }

  void _startTest() {
    if (functionSelected) {
      _playConfirmationSound();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Selecteer eerst een functie!'),
          backgroundColor: Colors.red,
        ),
      );

      // Speel een trilling af omdat er geen keuze is gemaakt
      Vibration.vibrate(duration: 100, amplitude: 128);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1560BD),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          selectedFunction = newValue;
                          functionSelected = true;
                        });
                      },
                      items: <String>[
                        'UX-UI Designer',
                        'Front-end Developer',
                        'Software engineer',
                        'Support medewerker',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _startTest, // Verwijst naar de nieuwe functie
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(222, 119, 34, 1),
                        foregroundColor: Colors.white,
                        elevation: 0, // Verwijdert de schaduw
                        side: functionSelected
                            ? const BorderSide(
                                color: Colors.transparent, // Kleur van de rand
                                width: 2, // Dikte van de rand
                              )
                            : const BorderSide(
                                color: Colors.red, // Kleur van de rand
                                width: 2, // Dikte van de rand
                              ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
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
        selectedItemColor: functionSelected ? Colors.blue : Colors.red,
      ),
    );
  }
}

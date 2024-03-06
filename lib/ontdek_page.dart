import 'package:flutter/material.dart';

class OntdekPage extends StatelessWidget {
  const OntdekPage({Key? key}) : super(key: key);

  void _startSearch(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Zoeken'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Voer zoekterm in',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Annuleren'),
            ),
            TextButton(
              onPressed: () {
                // Voer hier de logica uit voor de zoekactie
                Navigator.of(context).pop();
              },
              child: Text('Zoeken'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildProfile(BuildContext context, String name, String role,
      String description, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Linker foto
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[300],
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          // Tekstgedeelte
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  role,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1560BD),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
              height: MediaQuery.of(context)
                  .padding
                  .top), // Voeg hoogte van appbalk toe
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Zoek naar namen, rollen en of vaardigheden ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _startSearch(context);
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Denker',
                      style:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Sociaal',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Doener',
                      style:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 0), // Ruimte onder de knoppen en boven de profiel sectie
          // Profiel sectie
          _buildProfile(
              context, 'Barry Batsbak', 'Vormer', 'UX-UI Designer', ''),
          _buildProfile(context, 'Jorg van de Rijdt', 'Groepswerker',
              'Software Engineer', ''),
          _buildProfile(
              context, 'Brent van Malsen', 'Monitor', 'Graphic Designer', ''),
          _buildProfile(context, 'Marcel Veldhuizen', 'Back-end Ontwikkelaar',
              'Graphic Designer', ''),
          _buildProfile(context, 'Jan Jansen', 'Plant', 'UX-Design', ''),
          _buildProfile(context, 'Lisa de Vries', 'Brononderzoeker',
              'Softwareontwikkeling', ''),
          _buildProfile(
              context, 'Pieter Bakker', 'Teamwerker', 'Productmanagement', ''),
        ]),
      ),
    );
  }
}

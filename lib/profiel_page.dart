import 'package:flutter/material.dart';

class ProfielPage extends StatelessWidget {
  const ProfielPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiel'),
      ),
      backgroundColor: Color(0xFFDE7722),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
            ),
            SizedBox(height: 20),
            Text('Voornaam Achternaam', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('E-mailadres', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Actie voor de eerste knop
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDE7722), // achtergrondkleur
              ),
              child: Text(
                'Bekijk mijn team',
                style: TextStyle(
                  color: Colors.white, // tekstkleur
                  fontWeight: FontWeight.bold, // vetgedrukt
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Actie voor de tweede knop
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDE7722), // achtergrondkleur
              ),
              child: Text(
                'Bekijk test geschiedenis',
                style: TextStyle(
                  color: Colors.white, // tekstkleur
                  fontWeight: FontWeight.bold, // vetgedrukt
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfielPage extends StatelessWidget {
  const ProfielPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1560BD),
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
            Text(
              'E-mailadres',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brononderzoeker',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Als brononderzoeker ben je een extraverte en enthousiaste netwerker. Je gedijt op nieuwe kansen en ontmoet graag interessante mensen. Je uitstekende sociale vaardigheden stellen je in staat om snel het middelpunt te worden en anderen te enthousiasmeren.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Titel 2',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Tekst voor Titel 2',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
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

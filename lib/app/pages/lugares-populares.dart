import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/destination2.dart';

class LugaresPopulares extends StatelessWidget {
  const LugaresPopulares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Lugares populares',
          style: GoogleFonts.abhayaLibre(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: const Color(0xFF1B1E28),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todos os lugares populares',
              style: GoogleFonts.abhayaLibre(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: const Color(0xFF1B1E28),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: const [
                  Destination2(
                    imagePath: 'assets/images/spain.png',
                    country: 'Espanha',
                    city: 'Madrid, Espanha',
                    rating: 4.7,
                    price: 'R\$6459/Pessoa',
                  ),
                  Destination2(
                    imagePath: 'assets/images/france.png',
                    country: 'França',
                    city: 'Paris, França',
                    rating: 4.8,
                    price: 'R\$6894/Pessoa',
                  ),
                  Destination2(
                    imagePath: 'assets/images/peru.png',
                    country: 'Peru',
                    city: 'Machu Picchu, Peru',
                    rating: 4.3,
                    price: 'R\$761/Pessoa',
                  ),
                  Destination2(
                    imagePath: 'assets/images/egypt.png',
                    country: 'Egito',
                    city: 'Pirâmide de Gizé, Egito',
                    rating: 4.5,
                    price: 'R\$8857/Pessoa',
                  ),
                  Destination2(
                    imagePath: 'assets/images/india.png',
                    country: 'Índia',
                    city: 'Islampur, Índia',
                    rating: 4.6,
                    price: 'R\$1050/Pessoa',
                  ),
                  Destination2(
                    imagePath: 'assets/images/brazil.png',
                    country: 'Brasil',
                    city: 'Rio de Janeiro, Brasil',
                    rating: 4.7,
                    price: 'R\$957/Pessoa',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

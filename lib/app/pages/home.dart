import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/destination.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.only(left: 15.0, right: 1.0),
          child: const CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage('assets/images/profile-iron-man.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Iron Man',
              style: GoogleFonts.aclonica(
                color: const Color(0xFF1B1E28),
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined,
                color: Color.fromARGB(255, 74, 74, 74), size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              'Explore o',
              style: GoogleFonts.aclonica(
                fontSize: 38,
                fontWeight: FontWeight.normal,
                color: const Color(0xFF2E323E),
              ),
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.abhayaLibre(
                  fontSize: 38,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFF1B1E28),
                ),
                children: [
                  const TextSpan(text: 'Belo mundo '),
                  TextSpan(
                    text: 'world!',
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 38,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFFF7029),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Melhor destino',
                  style: GoogleFonts.abhayaLibre(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1B1E28),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/lugares-populares');
                  },
                  child: Text(
                    'Ver tudo',
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF0D6EFD),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: const Destination(
                          imagePath: 'assets/images/spain.png',
                          country: 'Espanha',
                          city: 'Madrid, Espanha',
                          rating: 4.7,
                          price: '\$6459',
                          reviews: '+50',
                          description:
                              'Madri, a capital da Espanha, situada no centro do país, é uma cidade de avenidas elegantes e parques grandes e bem cuidados, como o Buen Retiro.',
                        ),
                      );
                    },
                    child: const Destination(
                      imagePath: 'assets/images/spain.png',
                      country: 'Espanha',
                      city: 'Madrid, Espanha',
                      rating: 4.7,
                      price: '\$6459',
                      reviews: '+50',
                      description:
                          'Madri, a capital da Espanha, situada no centro do país, é uma cidade de avenidas elegantes e parques grandes e bem cuidados, como o Buen Retiro.',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: const Destination(
                          imagePath: 'assets/images/france.png',
                          country: 'França',
                          city: 'Paris, França',
                          rating: 4.8,
                          price: '\$7099',
                          reviews: '+70',
                          description:
                              'Paris, a capital da França, é uma grande cidade europeia e um centro mundial de arte, moda, gastronomia e cultura.',
                        ),
                      );
                    },
                    child: const Destination(
                      imagePath: 'assets/images/france.png',
                      country: 'França',
                      city: 'Paris, França',
                      rating: 4.8,
                      price: '\$7099',
                      reviews: '+70',
                      description:
                          'Paris, a capital da França, é uma grande cidade europeia e um centro mundial de arte, moda, gastronomia e cultura.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/mensagens');
              break;
            case 1:
              Navigator.pushNamed(context, '/home');
              break;
            case 2:
              Navigator.pushNamed(context, '/perfil');
              break;
          }
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}

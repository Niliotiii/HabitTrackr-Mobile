import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Amigos',
          style: GoogleFonts.abhayaLibre(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: const Color(0xFF1B1E28),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.add, color: Color(0xFF0D6EFD)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Image.asset(
                  'assets/images/set-friends.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 200),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Convide seus amigos para terem vidas mais',
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 30,
                            color: const Color(0xFF1B1E28),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'organizadas',
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 30,
                            color: const Color(0xFFFF7029),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/undlined-friends.png',
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 130),
                  Row(children: [
                    Text(
                      'Assim que ficará visível os seus amigos',
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 18,
                        color: const Color(0xFF1B1E28),
                      ),
                    ),
                  ]),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/profile-batman.png'),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Batman',
                            style: GoogleFonts.aclonica(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF1B1E28),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Já fez 34 tasks apenas hoje',
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF7D848D),
                            ),
                          ),
                        ],
                      ),
                    ],
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

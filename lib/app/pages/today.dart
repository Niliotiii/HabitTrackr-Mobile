import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myStatus.dart';

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hoje',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CompletedTasksScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: const Text(
                        'Meus Status',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.local_florist,
                        size: 100,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Viva uma vida mais organizada, comece',
                        style: GoogleFonts.abhayaLibre(
                          fontSize: 30,
                          color: const Color(0xFF1B1E28),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            'criando um ',
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 30,
                              color: const Color(0xFF1B1E28),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'hábito',
                                style: GoogleFonts.abhayaLibre(
                                  fontSize: 30,
                                  color: Color(0xFFFF7029),
                                ),
                              ),
                              Image.asset(
                                'assets/images/vetorVasto.png',
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Flexible(
                        child: Image.asset(
                          'assets/images/vetorToday.png',
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

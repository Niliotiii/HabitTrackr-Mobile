import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(
                  'assets/images/ilustration-habits.jpeg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: const Color(0xFF0D6EFD),
              ),
              child: Text(
                'Iniciar',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/destination.dart';

class Details extends StatelessWidget {
  final Destination destination;

  const Details({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text(
          'Detalhes',
          style: GoogleFonts.abhayaLibre(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        destination.imagePath,
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    transform: Matrix4.translationValues(0, -30, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -4),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  destination.country,
                                  style: GoogleFonts.aclonica(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF1B1E28),
                                  ),
                                ),
                                Text(
                                  destination.city,
                                  style: GoogleFonts.abhayaLibre(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF7D848D),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                  'assets/images/profile-batman.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                color: Colors.grey, size: 15),
                            const SizedBox(width: 4),
                            Text(
                              destination.city,
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.star,
                                color: Colors.orange, size: 15),
                            const SizedBox(width: 4),
                            Text(
                              '${destination.rating}',
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              destination.price,
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF0D6EFD),
                              ),
                            ),
                            Text(
                              '/pessoa',
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/details-1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/details-2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/details-3.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/details-4.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/details-5.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'About Destination',
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF1B1E28),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          destination.description,
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF7D848D),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 0),
              ),
              child: Text(
                'Agende agora',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

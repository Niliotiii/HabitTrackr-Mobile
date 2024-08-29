import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destination extends StatelessWidget {
  final String imagePath;
  final String country;
  final String city;
  final double rating;
  final String price;
  final String reviews;
  final String description;

  const Destination({
    super.key,
    required this.imagePath,
    required this.country,
    required this.city,
    required this.rating,
    required this.price,
    required this.reviews,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 358,
                width: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 4),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          country,
                          style: GoogleFonts.aclonica(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF1B1E28),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.orange, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              '$rating ($reviews)',
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF1B1E28),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            color: Colors.grey, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          city,
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF7D848D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destination2 extends StatelessWidget {
  final String imagePath;
  final String country;
  final String city;
  final double rating;
  final String price;

  const Destination2({
    super.key,
    required this.imagePath,
    required this.country,
    required this.city,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                imagePath,
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      country,
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF1B1E28),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      city,
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF7D848D),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 12),
                        const SizedBox(width: 4),
                        Text(
                          '$rating',
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF1B1E28),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      price,
                      style: GoogleFonts.aclonica(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF0D6EFD),
                      ),
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

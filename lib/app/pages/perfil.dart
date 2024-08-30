import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Perfil',
          style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF1B1E28)),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.border_color_outlined,
                  color: Color(0xFF0D6EFD)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 96,
                backgroundImage:
                    AssetImage('assets/images/profile-iron-man.png'),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'Iron Man',
                style: GoogleFonts.aclonica(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF1B1E28)),
              ),
            ),
            Center(
              child: Text(
                'email@exemplo.com',
                style: GoogleFonts.abhayaLibre(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF7D848D)),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Configurações',
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF1B1E28)),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  indent: 5,
                  endIndent: 5,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      _getIconForIndex(index),
                      color: const Color(0xFF7D848D),
                      size: 15,
                    ),
                    title: Text(
                      _getTitleForIndex(index),
                      style: GoogleFonts.aclonica(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF1B1E28),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF7D848D),
                      size: 15,
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.person;
      case 1:
        return Icons.star;
      case 2:
        return Icons.travel_explore;
      case 3:
        return Icons.settings;
      case 4:
        return Icons.info;
      default:
        return Icons.help;
    }
  }

  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Tema';
      case 1:
        return 'Paginas e Funções';
      case 2:
        return 'Gerencie o Hábit';
      case 3:
        return 'Mais Configurações';
      case 4:
        return 'Versão';
      default:
        return 'Item desconhecido';
    }
  }
}

import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Status',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 16,
                    top: 8,
                    child: Icon(Icons.circle, color: Colors.green, size: 12),
                  ),
                  Positioned(
                    left: 32,
                    top: 16,
                    child: Icon(Icons.star, color: Colors.red, size: 12),
                  ),
                  Positioned(
                    right: 16,
                    top: 8,
                    child: Icon(Icons.celebration, color: Colors.green, size: 24),
                  ),
                  Positioned(
                    right: 32,
                    bottom: 16,
                    child: Icon(Icons.star, color: Colors.blue, size: 12),
                  ),
                  Positioned(
                    left: 8,
                    bottom: 8,
                    child: Icon(Icons.circle, color: Colors.blue, size: 12),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Icon(Icons.circle, color: Colors.purple, size: 12),
                  ),
                  Positioned(
                    right: 24,
                    top: 24,
                    child: Icon(Icons.circle, color: Colors.orange, size: 12),
                  ),
                  Center(
                    child: Text(
                      'Parabéns, meta concluída',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const CompletedTaskCard(
              title: 'Correr',
              subtitle: '5km completados pela manhã',
              color: Color(0xFFFFE0B2),
              iconColor: Color(0xFFFFA726),
            ),
            const SizedBox(height: 16),
            const CompletedTaskCard(
              title: 'Meditar',
              subtitle: '20 minutos de meditação',
              color: Color(0xFFBBDEFB),
              iconColor: Color(0xFF42A5F5),
            ),
            const SizedBox(height: 16),
            const CompletedTaskCard(
              title: 'Estudar',
              subtitle: 'Revisão do material de Flutter',
              color: Color(0xFFFFCDD2),
              iconColor: Color(0xFFEF5350),
            ),
            const SizedBox(height: 16),
            const CompletedTaskCard(
              title: 'Treinar',
              subtitle: 'Treino de musculação finalizado',
              color: Color(0xFFB2DFDB),
              iconColor: Color(0xFF26A69A),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletedTaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final Color iconColor;

  const CompletedTaskCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 40,
            color: iconColor,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

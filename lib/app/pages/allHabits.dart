import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myStatus.dart';

class AllHabitsScreen extends StatefulWidget {
  @override
  _AllHabitsScreenState createState() => _AllHabitsScreenState();
}

class _AllHabitsScreenState extends State<AllHabitsScreen> {
  String selectedFilter = 'Todos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: const Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Todos os Habitos',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildSelectableChip('Todos'),
                  _buildSelectableChip('Mês'),
                  _buildSelectableChip('Semana'),
                  _buildSelectableChip('Dia'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Correr',
              subtitle: 'Completar 5km pela manhã',
              color: Color(0xFFFFE0B2),
              icon: Icons.directions_run,
              iconColor: Color(0xFFFFA726),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Meditar',
              subtitle: 'Sessão de meditação de 20 minutos',
              color: Color(0xFFBBDEFB),
              icon: Icons.self_improvement,
              iconColor: Color(0xFF42A5F5),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Estudar',
              subtitle: 'Revisar o material de Flutter',
              color: Color(0xFFFFCDD2),
              icon: Icons.book,
              iconColor: Color(0xFFEF5350),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Treinar',
              subtitle: 'Treino de musculação na academia',
              color: Color(0xFFB2DFDB),
              icon: Icons.fitness_center,
              iconColor: Color(0xFF26A69A),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Jantar',
              subtitle: 'Comer uma refeição saudável',
              color: Color(0xFFD1C4E9),
              icon: Icons.dinner_dining,
              iconColor: Color(0xFF7E57C2),
            ),
            const SizedBox(height: 16),
            const HabitCard(
              title: 'Almoçar',
              subtitle: 'Almoço equilibrado com proteínas',
              color: Color(0xFFFFF9C4),
              icon: Icons.lunch_dining,
              iconColor: Color(0xFFFBC02D),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectableChip(String label) {
    final bool isSelected = selectedFilter == label;
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(
          label,
          style: GoogleFonts.abhayaLibre(
              fontSize: 14, color: isSelected ? Colors.white : Colors.black),
        ),
        selected: isSelected,
        selectedColor: Colors.blue,
        backgroundColor: Colors.grey[200],
        onSelected: (selected) {
          setState(() {
            if (selected) {
              selectedFilter = label;
            } else {
              selectedFilter = '';
            }
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class HabitCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final Color iconColor;

  const HabitCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
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
            icon,
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

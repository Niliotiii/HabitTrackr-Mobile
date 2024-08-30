import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewHabitPage extends StatefulWidget {
  const NewHabitPage({super.key});

  @override
  _NewHabitPageState createState() => _NewHabitPageState();
}

class _NewHabitPageState extends State<NewHabitPage> {
  final TextEditingController afterTextController = TextEditingController();
  final TextEditingController willTextController = TextEditingController();
  List<String> selectedDays = [];
  List<String> allDays = [
    'Segundas',
    'Terças',
    'Quartas',
    'Quintas',
    'Sextas',
    'Sábados',
    'Domingos'
  ];
  Color? selectedColor;

  bool isAfterTextEnabled = true;
  bool isWillTextEnabled = true;

  @override
  void dispose() {
    afterTextController.dispose();
    willTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Novo Hábito',
          style: GoogleFonts.abhayaLibre(
              fontSize: 18, color: const Color(0xFF1B1E28)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF0D6EFD),
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancelar',
              style: GoogleFonts.abhayaLibre(
                  fontSize: 17, color: const Color(0xFF0D6EFD)),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Depois de que eu',
              style: GoogleFonts.abhayaLibre(
                  fontSize: 18, color: const Color(0xFF1B1E28)),
            ),
            const SizedBox(height: 10),
            _buildInputField(afterTextController, isAfterTextEnabled),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildSelectableChip('Correr', afterTextController),
                  _buildSelectableChip('Meditar', afterTextController),
                  _buildSelectableChip('Estudar', afterTextController),
                  _buildSelectableChip('Treinar', afterTextController),
                  _buildSelectableChip('Jantar', afterTextController),
                  _buildSelectableChip('Almoçar', afterTextController),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Eu vou',
              style: GoogleFonts.abhayaLibre(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),
            _buildInputField(willTextController, isWillTextEnabled),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildSelectableChip('Correr', willTextController),
                  _buildSelectableChip('Meditar', willTextController),
                  _buildSelectableChip('Estudar', willTextController),
                  _buildSelectableChip('Treinar', willTextController),
                  _buildSelectableChip('Jantar', willTextController),
                  _buildSelectableChip('Almoçar', willTextController),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Selecione os dias para lembrar',
              style: GoogleFonts.abhayaLibre(
                  fontSize: 18, color: const Color(0xFF1B1E28)),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildMultiSelectChip('Todos os dias', () {
                    setState(() {
                      if (selectedDays.length == allDays.length) {
                        selectedDays.clear();
                      } else {
                        selectedDays = List.from(allDays);
                      }
                    });
                  }),
                  ...allDays
                      .map((day) => _buildMultiSelectChip(day, () {
                            setState(() {
                              if (selectedDays.contains(day)) {
                                selectedDays.remove(day);
                              } else {
                                selectedDays.add(day);
                              }
                            });
                          }))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Clique para selecionar a cor',
              style: GoogleFonts.abhayaLibre(
                  fontSize: 18, color: const Color(0xFF1B1E28)),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildColorCircle(Colors.orange),
                  const SizedBox(width: 10),
                  _buildColorCircle(Colors.blue),
                  const SizedBox(width: 10),
                  _buildColorCircle(Colors.green),
                  const SizedBox(width: 10),
                  _buildColorCircle(Colors.red),
                  const SizedBox(width: 10),
                  _buildColorCircle(Colors.purple),
                  const SizedBox(width: 10),
                  _buildColorCircle(Colors.yellow),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/init');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFF0D6EFD),
                ),
                child: Text(
                  'Criar',
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
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, bool enabled) {
    return TextField(
      controller: controller,
      enabled: enabled,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildSelectableChip(String label, TextEditingController controller) {
    final bool isSelected = controller.text == label;
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
              controller.text = label;
              if (controller == afterTextController) {
                isAfterTextEnabled = false;
              } else if (controller == willTextController) {
                isWillTextEnabled = false;
              }
            } else {
              controller.clear();
              if (controller == afterTextController) {
                isAfterTextEnabled = true;
              } else if (controller == willTextController) {
                isWillTextEnabled = true;
              }
            }
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget _buildMultiSelectChip(String label, VoidCallback onTap) {
    final bool isSelected = selectedDays.length == allDays.length ||
        (label != 'Todos os dias' && selectedDays.contains(label));
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
        onSelected: (_) => onTap(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget _buildColorCircle(Color color) {
    final bool isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
          if (isSelected)
            const Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

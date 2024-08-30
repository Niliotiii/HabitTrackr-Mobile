import 'package:flutter/material.dart';

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
              // Título "Todos os Habitos"
              const Text(
                'Todos os Habitos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              // Conteúdo centralizado
              Center(
                child: Column(
                  children: [
                    // Ícone de flor
                    const Icon(
                      Icons.local_florist,
                      size: 100,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 20),
                    // Texto principal
                    const Text(
                      'Viva uma vida mais organizada, comece criando um',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Palavra "habito" destacada
                    const Text(
                      'habito',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    // Imagem do vetor (seta)
                    // Image.asset(
                    //   'assets/images/vetorToday.png', // Certifique-se de que o caminho está correto
                    //   height: 150,
                    // ),
                  ],
                ),
              ),
              const Spacer(),
              // Botão "Meus Status" alinhado à direita
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: const Text(
                    'Meus Status',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

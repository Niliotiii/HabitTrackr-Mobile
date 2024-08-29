import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Integrado extends StatefulWidget {
  const Integrado({super.key});

  @override
  _Integrado createState() => _Integrado();
}

class _Integrado extends State<Integrado> {
  final PageController _controller = PageController(initialPage: 0);
  double _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPageIndex = _controller.page ?? 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/integrado_1.png',
                            alignment: Alignment.topCenter,
                            width: double.maxFinite,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 50),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF1B1E28),
                              ),
                              children: [
                                const TextSpan(text: 'A vida é curta e o\n'),
                                const TextSpan(text: 'mundo é '),
                                TextSpan(
                                  text: 'vasto',
                                  style: GoogleFonts.abhayaLibre(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFF7029),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                              children: const [
                                TextSpan(
                                    text:
                                        'Na Friends tours and travel, personalizamos\n'),
                                TextSpan(
                                    text:
                                        'passeios educacionais confiáveis e confiáveis\n'),
                                TextSpan(text: 'para destinos em todo o mundo')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/integrado_2.png',
                            alignment: Alignment.topCenter,
                            width: double.maxFinite,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 50),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF1B1E28),
                              ),
                              children: [
                                const TextSpan(text: 'É um grande mundo lá\n'),
                                const TextSpan(text: 'fora, vá '),
                                TextSpan(
                                  text: 'explorar',
                                  style: GoogleFonts.abhayaLibre(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFF7029),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                              children: const [
                                TextSpan(
                                    text:
                                        'Para aproveitar ao máximo sua aventura\n'),
                                TextSpan(
                                    text:
                                        'você só precisa sair e ir para onde quiser.\n'),
                                TextSpan(text: 'estamos esperando por você')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/integrado_3.png',
                            alignment: Alignment.topCenter,
                            width: double.maxFinite,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 50),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF1B1E28),
                              ),
                              children: [
                                const TextSpan(text: 'As pessoas não fazem\n'),
                                const TextSpan(text: 'viagens, as viagens\n'),
                                const TextSpan(text: 'levam '),
                                TextSpan(
                                  text: 'pessoas',
                                  style: GoogleFonts.abhayaLibre(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFF7029),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF7D848D),
                              ),
                              children: const [
                                TextSpan(text: 'Venha conosco e não\n'),
                                TextSpan(text: 'perca essa oportunidade'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: DotsIndicator(
                  dotsCount: 3,
                  position: _currentPageIndex.toInt(),
                  decorator: DotsDecorator(
                    activeColor: Colors.blue,
                    size: const Size.square(9.0),
                    activeSize: const Size(30.0, 9.0),
                    color: Colors.grey,
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    spacing: const EdgeInsets.all(4.0),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 50),
                    backgroundColor: const Color(0xFF0D6EFD),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Próximo',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          right: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text(
              'Skip',
              style: GoogleFonts.abhayaLibre(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'home.dart';

class PageViewApp extends StatefulWidget {
  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  final _pageController = PageController();
  double _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            'assets/images/pageview1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              side: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          child: const Text('Skip',   style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  const Center(child: Text('A vida é curta e o', style: TextStyle(fontSize: 30))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('mundo é ', style: TextStyle(fontSize: 30)),
                      Column(
                        children: [
                          Text('vasto', style: TextStyle(fontSize: 30,color: Color(0xFFFF7029))),
                          Container(
                            child: Image.asset(
                              'assets/images/vetorVasto.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40,0,40 ,0),
                      child: Text(
                        'Na Frends tours and travel, personalizamos passeios educacionais confiáveis para destinos em todo o mundo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          height: 1.9,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            'assets/images/pageview2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              side: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          child: const Text('Skip',   style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  const Center(child: Text('É um mundo grande lá', style: TextStyle(fontSize: 30))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('fora, vá ', style: TextStyle(fontSize: 30)),
                      Column(
                        children: [
                          Text('explorar', style: TextStyle(fontSize: 30,color: Color(0xFFFF7029))),
                          Container(
                            child: Image.asset(
                              'assets/images/explorar.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40,0,40 ,0),
                      child: Text(
                        'Para aproveitar ao máximo sua aventura você só precisa sair e ir para onde quiser. estamos esperando por você',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          height: 1.9,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            'assets/images/pageview3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              side: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          child: const Text('Skip',   style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                    const Center(
                      child: Text(
                        'As pessoas não fazem viagens, as viagens',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('levam ', style: TextStyle(fontSize: 30)),
                      Column(
                        children: [
                          Text('pessoas', style: TextStyle(fontSize: 30,color: Color(0xFFFF7029))),
                          Container(
                            child: Image.asset(
                              'assets/images/explorar.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 2),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40,0,40 ,0),
                      child: Text(
                        'Para aproveitar ao máximo sua aventura você só precisa sair e ir para onde quiser. estamos esperando por você',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          height: 1.9,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
            onPageChanged: (int page) {
              setState(() {
                _currentPageIndex = page.toDouble();
              });
            },
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    position: _currentPageIndex.toInt(),
                    decorator: DotsDecorator(
                      activeColor: const Color.fromARGB(255, 5, 117, 209),
                      size: const Size.square(9.0),
                      activeSize: const Size(30.0, 9.0),
                      color: Colors.grey,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      spacing: const EdgeInsets.all(4.0),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        _currentPageIndex < 2 ? _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease) : Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 65)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ), 
                      ),
                      child: const Text('Próximo', style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
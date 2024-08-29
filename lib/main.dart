import 'package:dispositivos_mobile_aula_1/app/pages/lugares-populares.dart';
import 'package:dispositivos_mobile_aula_1/app/pages/mensagens.dart';
import 'package:flutter/material.dart';

import 'app/pages/details.dart';
import 'app/pages/home.dart';
import 'app/pages/init.dart';
import 'app/pages/integrado.dart';
import 'app/pages/perfil.dart';
import 'app/widgets/destination.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/main':
            return MaterialPageRoute(builder: (context) => const Main());
          case '/init':
            return MaterialPageRoute(builder: (context) => const InitPage());
          case '/integrado':
            return MaterialPageRoute(builder: (context) => const Integrado());
          case '/home':
            return MaterialPageRoute(builder: (context) => const Home());
          case '/details':
            final Destination args = settings.arguments as Destination;
            return MaterialPageRoute(
              builder: (context) => Details(destination: args),
            );
          case '/lugares-populares':
            return MaterialPageRoute(
                builder: (context) => const LugaresPopulares());
          case '/perfil':
            return MaterialPageRoute(builder: (context) => const Perfil());
          case '/mensagens':
            return MaterialPageRoute(builder: (context) => const Mensagens());
          default:
            return MaterialPageRoute(builder: (context) => const InitPage());
        }
      },
      initialRoute: '/init',
    );
  }
}

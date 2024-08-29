// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                'Faça seu login',
                style: GoogleFonts.aBeeZee(fontSize: 26),
              ),
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Faça login para continuarmos nosso aplicativo',
                  style: GoogleFonts.abhayaLibre(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF7D848D),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: const Color(0xFFF7F7F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe seu email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller:
                    _passwordController, // Certifique-se de ter um TextEditingController para a senha
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  filled: true,
                  fillColor: const Color(0xFFF7F7F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe sua senha';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Esqueceu a senha',
                    style: GoogleFonts.aclonica(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0D6EFD),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/integrado');
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color(0xFF0D6EFD),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Não tem uma conta?',
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF707B81),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Inscreva-se',
                      style: GoogleFonts.aclonica(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ou conecte-se!',
                      style: GoogleFonts.abhayaLibre(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF707B81),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      const url = 'https://www.instagram.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Não foi possível abrir $url'),
                              content: const Text(
                                  'Provavelmente você não possua o aplicativo do Instagram instalado no seu dispositivo.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: ClipOval(
                      child: Transform.scale(
                        scale: 1.15,
                        child: Image.asset(
                          'assets/images/instagram.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const url = 'https://www.facebook.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Não foi possível abrir $url'),
                              content: const Text(
                                  'Provavelmente você não possua o aplicativo do Facebook instalado no seu dispositivo.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: ClipOval(
                      child: Transform.scale(
                        scale: 1,
                        child: Image.asset(
                          'assets/images/facebook.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const url = 'https://www.whatsapp.com/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Não foi possível abrir $url'),
                              content: const Text(
                                  'Provavelmente você não possua o aplicativo do Whatsapp instalado no seu dispositivo.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: ClipOval(
                      child: Transform.scale(
                        scale: 1.1,
                        child: Image.asset(
                          'assets/images/whatsapp.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mensagens extends StatelessWidget {
  const Mensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF1B1E28)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text(
          'Mensagens',
          style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF1B1E28)),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.more_vert_outlined,
                  color: Color(0xFF1B1E28)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Mensagens',
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF1B1E28)),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.chat_outlined,
                  color: Color(0xFF1B1E28),
                  size: 20,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: 'Pesquise bate-papos e mensagens',
                hintStyle: GoogleFonts.abhayaLibre(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF7D848D)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                messageTile(
                  name: 'Captain America',
                  message: 'Hi, John! 👋 How are you doing?',
                  time: '09:46',
                  avatar: 'assets/images/profile-capitain-america.png',
                  statusIcon: Icons.check_circle,
                  statusColor: Colors.green,
                ),
                messageTile(
                  name: 'Hulk',
                  message: 'Typing...',
                  time: '08:42',
                  avatar: 'assets/images/profile-hulk.png',
                  statusIcon: Icons.check_circle,
                  statusColor: Colors.green,
                ),
                messageTile(
                  name: 'Captain Marvel',
                  message:
                      'You: Cool! 😎 Let’s meet at 18:00 near the traveling!',
                  time: '08:40',
                  avatar: 'assets/images/profile-capitain-marvel.png',
                  statusIcon: Icons.check_circle,
                  statusColor: Colors.yellow,
                ),
                messageTile(
                  name: 'Spider Man',
                  message: 'You: Hey, will you come to the party on Saturday?',
                  time: '07:56',
                  avatar: 'assets/images/profile-spider-man.png',
                  statusIcon: Icons.check_circle,
                  statusColor: Colors.red,
                ),
                messageTile(
                  name: 'Batman',
                  message: 'Thank you for coming! Your or...',
                  time: '05:52',
                  avatar: 'assets/images/profile-batman.png',
                  statusIcon: Icons.check_circle,
                  statusColor: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/mensagens');
              break;
            case 1:
              Navigator.pushNamed(context, '/home');
              break;
            case 2:
              Navigator.pushNamed(context, '/perfil');
              break;
          }
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  ListTile messageTile({
    required String name,
    required String message,
    required String time,
    required String avatar,
    required IconData statusIcon,
    required Color statusColor,
  }) {
    // Lista de ícones para status de mensagens
    List<IconData> messageStatusIcons = [
      Icons.done, // Enviado
      Icons.done_all, // Recebido
      Icons.done_all_outlined, // Visualizado
      Icons.access_time, // Não recebido
    ];

    // Seleciona um ícone de status aleatoriamente
    IconData randomStatusIcon = (messageStatusIcons..shuffle()).first;

    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 5.0,
              child: Icon(
                statusIcon,
                color: statusColor,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
      title: Text(name,
          style: GoogleFonts.aclonica(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF1B1E28))),
      subtitle: Text(message,
          style: GoogleFonts.abhayaLibre(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF7D848D))),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(time,
              style: GoogleFonts.abhayaLibre(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFF7D848D))),
          const SizedBox(width: 4), // Espaço entre a hora e o ícone de status
          Icon(
            randomStatusIcon,
            color: const Color(0xFF7D848D),
            size: 14.0,
          ),
        ],
      ),
    );
  }
}

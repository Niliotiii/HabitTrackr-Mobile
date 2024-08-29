import 'package:flutter/material.dart';
import 'home.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.edit, color: Colors.black),
                    onPressed: () {
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/perfil.png'),
            ),
            SizedBox(height: 16),
            Text(
              'Leonardo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'leonardo@gmail.com',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatisticItem('Recompensa', '360'),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey[300],
                ),
                _buildStatisticItem('Viagens', '238'),
                Container(
                  height: 50,
                  width: 1,
                  color: Colors.grey[300],
                ),
                _buildStatisticItem('Lista de desejos', '473'),
              ],
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  _buildProfileOption(Icons.person, 'Perfil'),
                  _buildProfileOption(Icons.bookmark, 'Marcado como favorito'),
                  _buildProfileOption(Icons.history, 'Viagens anteriores'),
                  _buildProfileOption(Icons.settings, 'Configurações'),
                  _buildProfileOption(Icons.info_outline, 'Versão'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileOption(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: () {
      },
    );
  }
}

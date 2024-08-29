import 'package:flutter/material.dart';
import 'home.dart';

class MessagesPage extends StatelessWidget {
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
              'Mensagens',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mensagens',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit_square, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquise bate-papos e mensagens',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildMessageTile(
                    avatar: 'assets/images/perfil.png',
                    name: 'Sajib Rahman',
                    message: 'Hi, John! 🌞 How are you doing?',
                    time: '09:46',
                    isRead: true,
                    isOnline: true,
                  ),
                  _buildMessageTile(
                    avatar: 'assets/images/perfil.png',
                    name: 'Adom Shafi',
                    message: 'Typing...',
                    time: '08:42',
                    isTyping: true,
                    isOnline: true,
                  ),
                  _buildMessageTile(
                    avatar: 'assets/images/perfil.png',
                    name: 'HR Rumen',
                    message: 'You: Cool! 😎 Let’s meet at 18:00 near the traveling!',
                    time: 'Yesterday',
                    isRead: true,
                  ),
                  _buildMessageTile(
                    avatar: 'assets/images/perfil.png',
                    name: 'Anjelina',
                    message: 'You: Hey, will you come to the party on Saturday?',
                    time: '07:56',
                    isRead: true,
                    isOnline: false,
                  ),
                  _buildMessageTile(
                    avatar: 'assets/images/perfil.png',
                    name: 'Alexa Shorna',
                    message: 'Thank you for coming! Your or...',
                    time: '05:52',
                    isRead: true,
                    isOnline: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageTile({
    required String avatar,
    required String name,
    required String message,
    required String time,
    bool isRead = false,
    bool isTyping = false,
    bool isOnline = false,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(avatar),
          ),
          if (isOnline)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
        ],
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      subtitle: Text(
        message,
        style: TextStyle(
          color: isTyping ? Colors.blue : Colors.grey[600],
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          if (isRead)
            Icon(
              Icons.check,
              size: 16,
              color: Colors.grey,
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/originals/ab/b8/8f/abb88fe4cc8e13fe7d49f1c56be8eccd.jpg"),
          ),
        ),
        title: const Text(
          'Brou 🤙',
        ),
        // centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return const MyMessageBubble();
                },
              ),
            ),
            const Text('Hola')
          ],
        ),
      ),
    );
  }
}

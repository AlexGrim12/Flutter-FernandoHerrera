import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: "What's up bro?", fromWho: FromWho.me),
    Message(text: "How was your day?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage( String text) async{
    // TODO implementar metodo
  }
}

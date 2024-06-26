import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesOrNoAnswer = GetYesNoAnswer();
  List<Message> messageList = [
    Message(text: "What's up bro?", fromWho: FromWho.me),
    Message(text: "How was your day?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    if(text.endsWith('?')) herReply();

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }
  Future<void> herReply() async{
    final herMessage = await getYesOrNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }
  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

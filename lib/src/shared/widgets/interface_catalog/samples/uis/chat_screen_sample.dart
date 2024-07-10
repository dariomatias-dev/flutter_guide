import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum MessageStatus {
  send,
  receiver,
}

class MessageModel {
  const MessageModel({
    required this.text,
    required this.status,
    required this.sentDate,
  });

  final String text;
  final MessageStatus status;
  final DateTime sentDate;
}

final messages = <MessageModel>[
  MessageModel(
    text: "Hello there!",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 0),
  ),
  MessageModel(
    text: "Hi, how are you?",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 1),
  ),
  MessageModel(
    text: "I'm doing great, thanks!",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 2),
  ),
  MessageModel(
    text: "That's good to hear!",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 3),
  ),
  MessageModel(
    text: "Did you finish the project we were working on?",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 4),
  ),
  MessageModel(
    text: "Yes, I just sent you the final version. Check your email.",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 5),
  ),
  MessageModel(
    text: "Great! I'll take a look at it now.",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 6),
  ),
  MessageModel(
    text: "Let me know if you have any feedback or need any changes.",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 7),
  ),
  MessageModel(
    text: "Sure, will do. By the way, do you have any plans for the weekend?",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 8),
  ),
  MessageModel(
    text: "Not yet. I was thinking about going hiking. What about you?",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 9),
  ),
  MessageModel(
    text: "That sounds fun! I might join you if that's okay.",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 10),
  ),
  MessageModel(
    text: "Of course! The more, the merrier. I'll send you the details.",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 11),
  ),
  MessageModel(
    text: "Awesome! Looking forward to it.",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 12),
  ),
  MessageModel(
    text:
        "By the way, did you see the new movie that came out last week? It's getting great reviews.",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 13),
  ),
  MessageModel(
    text:
        "No, I haven't had the chance yet. Maybe we can watch it after the hike.",
    status: MessageStatus.send,
    sentDate: DateTime(2024, 1, 1, 9, 14),
  ),
  MessageModel(
    text: "Sounds like a plan! I'll book the tickets.",
    status: MessageStatus.receiver,
    sentDate: DateTime(2024, 1, 1, 9, 15),
  ),
];

class ChatScreenSample extends StatelessWidget {
  const ChatScreenSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ChatScreen();
                },
              ),
            );
          },
          child: const Text(
            'Show Chat Screen',
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.sizeOf(context).width * 0.8;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: const Text('Chat'),
      ),
      body: ListView.separated(
        controller: _scrollController,
        padding: const EdgeInsets.only(
          top: 12.0,
          right: 12.0,
          bottom: 40.0,
          left: 12.0,
        ),
        itemCount: messages.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 22.0);
        },
        itemBuilder: (context, index) {
          final message = messages[index];
          final isMessageSent = message.status == MessageStatus.send;

          return MessageWidget(
            isMessageSent: isMessageSent,
            maxWidth: maxWidth,
            message: message,
          );
        },
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.isMessageSent,
    required this.maxWidth,
    required this.message,
  });

  final bool isMessageSent;
  final double maxWidth;
  final MessageModel message;

  String get formatDate {
    final dateFormat = DateFormat('MM/dd/yyyy HH:mm');

    return dateFormat.format(
      message.sentDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMessageSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMessageSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: isMessageSent ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    isMessageSent ? 20.0 : 0.0,
                  ),
                  topRight: Radius.circular(
                    isMessageSent ? 0.0 : 20.0,
                  ),
                  bottomRight: const Radius.circular(20.0),
                  bottomLeft: const Radius.circular(20.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 8.0,
                    spreadRadius: 8.0,
                    color: Colors.black.withOpacity(0.115),
                    offset: const Offset(1.0, 1.0),
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: isMessageSent ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Text(
            formatDate,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

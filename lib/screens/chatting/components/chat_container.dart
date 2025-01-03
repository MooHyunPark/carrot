import 'package:carrot/screens/components/image_container.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ImageContainer(
                borderRadius: 25,
                imageUrl: chatMessage.profileImage,
                width: 50,
                height: 50),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: chatMessage.sender,
                        style: textTheme().bodyLarge,
                      ),
                      TextSpan(text: chatMessage.location),
                      TextSpan(text: ' * ${chatMessage.sendDate}'),
                    ]),
                  ),
                  const Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Visibility(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    borderRadius: 8,
                    imageUrl: chatMessage.imageUri ?? '',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

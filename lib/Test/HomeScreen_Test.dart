import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'HomePagePopupMenuButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversation'),
        actions: [HomePagePopupMenuButton()],
      ),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, defaultAction) async {
          await navigateToMessageListPage(context, conversation);
        },
      ),
    );
  }

  Future<void> navigateToMessageListPage(
      BuildContext context, ZIMKitConversation conversation) async {
    try {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ZIMKitMessageListPage(
            conversationID: conversation.id,
            conversationType: conversation.type,
          ),
        ),
      );
    } catch (e) {
      // Handle navigation error
      print('Error navigating to message list page: $e');
    }
  }
}

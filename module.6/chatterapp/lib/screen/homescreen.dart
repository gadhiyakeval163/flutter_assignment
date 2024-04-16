import 'package:chatterapp/component/drawer.dart';
import 'package:chatterapp/component/usertitle.dart';
import 'package:chatterapp/screen/chatscreen.dart';
import 'package:chatterapp/services/chat_services.dart';
import 'package:chatterapp/services/firebase_auth_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ChatService _chatService = ChatService();
  final FirebaseAuthService _authService = FirebaseAuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Chatt",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
              color: Colors.white, 
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (context, snapshort) {
        // error
        if (snapshort.hasError) {
          return const Text("Error");
        }
        // loading
        if (snapshort.connectionState == ConnectionState.waiting) {
          return const Center(child: Text("Loading..."));
        }
        // return list view
        return ListView(
          children: snapshort.data!
              .map((userData) => _buildUserListItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    // display all users except current user
    if(userData['email'] != _authService.getCurrentUser()!.email){
      return UserTitle(
      text: userData['name'],
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ChatPage(title: userData['name'],receiveEmail: userData['email'], receiveID: userData['uid'],)));
      },
    );
    }else{
      return Container();
    }
  }
}
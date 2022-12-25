import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAkPI8pkkb-ntqnuI3baLAzBMP1NVexRKU",
        appId: "1:1082269395809:android:56d4a7fc9dda703b2ef320",
        messagingSenderId: "1082269395809",
        projectId: "flash-chat-ad981"),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id2: (context) => LoginScreen(),
        RegistrationScreen.id1: (context) => RegistrationScreen(),
        ChatScreen.id3: (context) => ChatScreen(),
      },
    );
  }
}

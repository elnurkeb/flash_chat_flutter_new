import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_flutter_new/screens/welcome_screen.dart';
import 'package:flash_chat_flutter_new/screens/chat_screen.dart';
import 'package:flash_chat_flutter_new/screens/login_screen.dart';
import 'package:flash_chat_flutter_new/screens/registration_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(FlashChat());
  } catch (e) {
    print("Error: $e");
  }
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: <String, WidgetBuilder>{
          ChatScreen.id: (BuildContext context) => ChatScreen(),
          LoginScreen.id: (BuildContext context) => LoginScreen(),
          RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
          WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
        });
  }
}

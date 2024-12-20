import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '/screens/auth_screen.dart';
import '/screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAUPzxHCOi33TNNmdLO_zamDf-IbguB1VU',
      appId: 'y1:320296905317:android:ed89e0dfc694bddcc9f48c',
      messagingSenderId: 'fir-app-e0212',
      projectId: 'fir-app-e0212',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => const AuthScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

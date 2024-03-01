import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PhotoToQRApp());
}

class PhotoToQRApp extends StatefulWidget {
  const PhotoToQRApp({super.key});

  @override
  State<PhotoToQRApp> createState() => _PhotoToQRAppState();
}

class _PhotoToQRAppState extends State<PhotoToQRApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image to QR',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

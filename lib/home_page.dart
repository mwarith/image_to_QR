import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  Image? qrImage;
  String? url;

  getImage() async {
    var picker = ImagePicker();
    var image = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (image != null) _image = File(image.path);
    });
    var imageName = basename(image!.path);
    var ref = FirebaseStorage.instance.ref(imageName);
    await ref.putFile(_image!);
    url = await ref.getDownloadURL();
    setState(() {
      qrImage = Image.network(url!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Image To QR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0XFF019286),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  getImage();
                },
                height: 40,
                minWidth: 60,
                color: const Color(0XFF009388),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Take a photo',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              if (url != null)
                QrImageView(
                  version: QrVersions.auto,
                  size: 200.0,
                  data: url!,
                )
              else
                (const Text("Please take a photo!")),
            ],
          ),
        ),
      ),
    );
  }
}

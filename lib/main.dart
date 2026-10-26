import 'dart:io';

import 'package:flutter/material.dart';
//Import des packages
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Mes photos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  File? _file;

  Future<void> _pickImage(ImageSource source) async {
    XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile != null){
      setState(() {
        String path = xFile.path;
        _file = File(path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(widget.title),
        actionsPadding: const EdgeInsets.all(8),
        actions: [
          IconButton(
              onPressed: (() => _pickImage(ImageSource.gallery)),
              icon: const FaIcon(FontAwesomeIcons.photoFilm, color: Colors.blue,)
          ),

          IconButton(
              onPressed: (() => _pickImage(ImageSource.camera)),
              icon: const FaIcon(FontAwesomeIcons.camera,  color: Colors.blue)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    // backgroundImage: Image.file(_file),
                  ),
                  CircleAvatar(
                    radius: 50,
                    // backgroundImage: Image.file(_file),
                  ),

                ],
              ),
            ),
            _file != null
                ? Image.file(_file!)
                :FlutterLogo(
              size: MediaQuery.of(context).size.width * 0.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: (() => _pickImage(ImageSource.camera)),
                    icon: const FaIcon(FontAwesomeIcons.camera,  color: Colors.blue)
                ),
                IconButton(
                    onPressed: (() => _pickImage(ImageSource.camera)),
                    icon: const FaIcon(FontAwesomeIcons.cameraRetro,  color: Colors.blue)
                ),
                IconButton(
                    onPressed: (() => _pickImage(ImageSource.gallery)),
                    icon: const FaIcon(FontAwesomeIcons.photoFilm, color: Colors.blue,)
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}

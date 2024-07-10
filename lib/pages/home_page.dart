import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_firebase_storage/services/images_service.dart";

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? imageToUpload;

  @override
  Widget build(BuildContext context) {
    ImageService imageService = ImageService();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Firebase Storage App'),
        ),
        body: Column(
          children: [
            imageToUpload != null
                ? Image.file(imageToUpload!)
                : Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    color: Colors.red),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      final imagen = await imageService.getImageSource();
                      setState(() {
                        imageToUpload = File(imagen!.path);
                      });
                    },
                    child: const Text('Seleccionar Imagen')),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('Subir Imagen a Firebase'))
              ],
            )
          ],
        ));
  }
}

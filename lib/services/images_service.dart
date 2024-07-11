import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageService {
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<XFile?> getImageSource() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    return image;
  }

  Future<bool> uploadImage(File image) async {
    final String nameFile = image.path.split("/").last;

    Reference ref = storage.ref().child("images").child(nameFile);
    final UploadTask uploadTask = ref.putFile(image);

    final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => true);

    final url = await taskSnapshot.ref.getDownloadURL();

    print(url);

    return false;
  }
}

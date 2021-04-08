import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  pickImage() async {
    File file = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = file;
    });
  }

  void initState() {
    super.initState();
    this.pickImage();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child:
            _image == null ? CircularProgressIndicator() : Image.file(_image),
      ),
    );
  }
}

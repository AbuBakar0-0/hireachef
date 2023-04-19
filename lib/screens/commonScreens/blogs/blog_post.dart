import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireachef/widgets/textfields/text_field.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Constants.dart';

class BlogPost extends StatefulWidget {
  const BlogPost({Key? key}) : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {

  TextEditingController title = TextEditingController();
  TextEditingController subtitle = TextEditingController();
  TextEditingController description = TextEditingController();

  var imageFile;

  getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/text-logo.png'),
          width: 170,
        ),
        backgroundColor: Constant.orange,
        iconTheme: IconThemeData(color: Constant.white),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Constant.orange,
              Constant.white,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  getFromGallery();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: imageFile!=null?Image.file(imageFile,width: 130,height: 130,):const Image(
                    image: AssetImage("assets/camera.png"),
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              textField(title, "Title", Icons.title_outlined),
              textField(subtitle, "Subtitle", Icons.subtitles_outlined),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  maxLines: 4,
                  controller: description,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Description",
                    prefixIcon: Icon(Icons.description_outlined),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  width: Get.width,
                  height: 50,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Constant.orange,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Post Blog",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

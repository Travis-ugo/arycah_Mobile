import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Stream<QuerySnapshot> items =
      FirebaseFirestore.instance.collection('users').snapshots();
  final ageController = TextEditingController();
  File? file;
  UploadTask? task;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? file!.path : 'No file selected';

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Firebase project'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: ageController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.date_range),
                  labelText: 'Age',
                ),
              ),
              // const SizedBox(height: 200),
              button(onTap: () => selectFile(), text: 'Select File'),
              const SizedBox(height: 20),
              Text(
                fileName,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 35),
              button(onTap: () => uploadFile(), text: 'Uplooad File'),
              const SizedBox(height: 20),
              task != null
                  ? buildUploadStatus(task!)
                  : const Text(
                      'No File to upload',
                      style: TextStyle(color: Colors.white),
                    ),
              // const SizedBox(height: 100),
              SizedBox(
                height: 300,
                width: 350,
                child: StreamBuilder<QuerySnapshot>(
                    stream: items,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return const Center(
                          child: Text('Error Occured'),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: Text('Loading'),
                        );
                      }
                      final data = snapshot.requireData;
                      return ListView.builder(
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Column(
                              children: [
                                Text(
                                  'My name is ${data.docs[index]['age']} my age ${data.docs[index]['age']}',
                                ),
                                SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: Image.network(
                                    data.docs[index]['name'],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button({required String text, required void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        width: 350,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Future selectFile() async {
    final results = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (results == null) return;
    final path = results.files.single.path!;

    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileName = file!.path.trim();
    final destination = "Files/$fileName";
    task = FirebaseApi.uploadFile(destination, file!);
    final snapShot = await task!.whenComplete(() => null);
    final urlDownload = await snapShot.ref.getDownloadURL();
    users
        .add({'name': urlDownload, 'age': ageController.text})
        .then((value) => print('user added'))
        .catchError((error) {
          print('this error occured $error');
        });
    if (task == null) return;
    print('url of this file is: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);
            return Column(
              children: [
                Text(
                  '$percentage %',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            );
          } else {
            return const Text(
              'No File to upload',
              style: TextStyle(
                color: Colors.white,
              ),
            );
          }
        },
      );
}

class FirebaseApi {
  static UploadTask? uploadFile(String destination, File file) {
    try {
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putFile(file);
    } on FirebaseException catch (e) {
      return null;
    }
  }

  static UploadTask? uploadBytes(String destination, Uint8List data) {
    try {
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putData(data);
    } on FirebaseException catch (e) {
      return null;
    }
  }
}

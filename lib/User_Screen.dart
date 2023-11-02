// ignore_for_file: file_names
import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({required this.id, required this.name, required this.phone});
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class UserScreen extends StatelessWidget {
  
  List<UserModel> users = [
    UserModel(id: 1, name: 'Ziad Ezzat', phone: '+2010189382585'),
    UserModel(id: 2, name: 'ElDorgho', phone: '+201249658235'),
    UserModel(id: 3, name: 'Omar', phone: '+201565329865'),
    UserModel(id: 4, name: 'sos', phone: '+2010189382585'),
    UserModel(id: 5, name: 'Mo', phone: '+2010189382585'),
    UserModel(id: 1, name: 'Ziad Ezzat', phone: '+2010189382585'),
    UserModel(id: 2, name: 'ElDorgho', phone: '+201249658235'),
    UserModel(id: 3, name: 'Omar', phone: '+201565329865'),
    UserModel(id: 4, name: 'sos', phone: '+2010189382585'),
    UserModel(id: 5, name: 'Mo', phone: '+2010189382585'),
    UserModel(id: 1, name: 'Ziad Ezzat', phone: '+2010189382585'),
    UserModel(id: 2, name: 'ElDorgho', phone: '+201249658235'),
    UserModel(id: 3, name: 'Omar', phone: '+201565329865'),
    UserModel(id: 4, name: 'sos', phone: '+2010189382585'),
    UserModel(id: 5, name: 'Mo', phone: '+2010189382585'),
    UserModel(id: 1, name: 'Ziad Ezzat', phone: '+2010189382585'),
    UserModel(id: 2, name: 'ElDorgho', phone: '+201249658235'),
    UserModel(id: 3, name: 'Omar', phone: '+201565329865'),
    UserModel(id: 4, name: 'sos', phone: '+2010189382585'),
    UserModel(id: 5, name: 'Mo', phone: '+2010189382585'),
    UserModel(id: 1, name: 'Ziad Ezzat', phone: '+2010189382585'),
    UserModel(id: 2, name: 'ElDorgho', phone: '+201249658235'),
    UserModel(id: 3, name: 'Omar', phone: '+201565329865'),
    UserModel(id: 4, name: 'sos', phone: '+2010189382585'),
    UserModel(id: 5, name: 'Mo', phone: '+2010189382585'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                '${user.id}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  // ignore: unnecessary_string_interpolations
                  '${user.name}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  // ignore: unnecessary_string_interpolations
                  '${user.phone}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}

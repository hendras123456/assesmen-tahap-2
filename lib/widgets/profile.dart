import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final userProfile;

  ProfileScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(userProfile.imageUrl),
            ),
            SizedBox(height: 20),
            Text('Nama: ${userProfile.name}'),
            Text('Email: ${userProfile.email}'),
          ],
        ),
      ),
    );
  }
}

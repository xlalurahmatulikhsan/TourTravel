import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/services/auth_service.dart';
import 'package:slicing/views/auth/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  dologout() async {
    bool siSucces = await AuthService().logout();
    if (!siSucces) {
      print('Loguttttt=========');
    }
    Get.offAll(LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () {
              dologout();
            },
          )
        ],
        title: Text('Profile'),
      ),
    );
  }
}

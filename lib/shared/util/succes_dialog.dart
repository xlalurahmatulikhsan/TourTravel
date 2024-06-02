import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/views/navigations/main_navigation_view.dart';

// Widget untuk success dialog
class SuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Success'),
      content: Text('Login successful!'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            Get.offAll(MainNavigationView());
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SuccessDialog();
    },
  );
}

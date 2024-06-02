import 'package:flutter/material.dart';
import 'package:slicing/shared/theme/theme.dart';

// Widget untuk error dialog
class ErrorDialog extends StatelessWidget {
  final String errorMessage;

  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blackColor,
      actionsAlignment: MainAxisAlignment.center,
      content: Text(
        errorMessage,
        style: whiteTextStyle.copyWith(),
      ),
    );
  }
}

// Fungsi untuk menampilkan error dialog
void showErrorDialog(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorDialog(errorMessage: errorMessage);
    },
  );
}

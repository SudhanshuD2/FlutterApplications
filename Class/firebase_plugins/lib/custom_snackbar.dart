import 'package:flutter/material.dart';

class CustomSnackbar{
  static showCustomSnackBar({required String message, required BuildContext context}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
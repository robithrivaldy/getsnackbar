import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MsgSnackBar {
  static void msgWarning(String promp) {
    Get.snackbar(
      'Warning',
      promp,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.amber,
      overlayBlur: 1,
      colorText: Colors.black,
    );
  }

  static void msgSuccess(String promp) {
    Get.snackbar(
      'Success',
      promp,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
      overlayBlur: 1,
      colorText: Colors.white,
    );
  }

  static void msgError(String promp) {
    Get.snackbar(
      'Error',
      promp,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
      overlayBlur: 1,
      colorText: Colors.white,
    );
  }

  static void snackErrorTry(VoidCallback onPress, [String? promp]) {
    Get.snackbar(
      '',
      '',
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
      overlayBlur: 1,
      mainButton: TextButton.icon(
        label: const Text(
          'Try Again',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        onPressed: onPress,
      ),
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.TOP,
      isDismissible: false,
      barBlur: 30.0,
      titleText: const Text(
        'Error',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      messageText: Text(
        promp == null ? 'Internet Not Found' : promp,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

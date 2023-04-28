import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackbar/Helpers/msg_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Warning
              ElevatedButton(
                onPressed: () {
                  MsgSnackBar.msgWarning('Data Not found');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                child: const Text(
                  "Warning",
                ),
              ),

              // Success
              ElevatedButton(
                onPressed: () {
                  MsgSnackBar.msgSuccess("Data is saved");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Text(
                  "Success",
                ),
              ),

              // Error
              ElevatedButton(
                onPressed: () {
                  MsgSnackBar.msgError("Error failed load data");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text(
                  "Error",
                ),
              ),

              // Error Try Again
              ElevatedButton(
                onPressed: () {
                  MsgSnackBar.snackErrorTry(() {
                    Get.offAll(const HomePage());
                  }, 'Jaringan sedang sibuk');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text(
                  "Try Again",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

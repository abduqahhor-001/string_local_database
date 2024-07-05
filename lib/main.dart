import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_database/pages/create_acc_page.dart';
import 'package:local_database/pages/sign_up.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CreateAccPage()
    );
  }
}


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() async {
  runApp(const MyApp());
  // print(await createOrderMessage());
}

// Future<String> createOrderMessage() async {
//   var order = await fetchUserOrder();
//   return 'your order is $order';
// }
// Future<String> fetchUserOrder (){
//    return  Future.delayed(const Duration(seconds: 2),() => 'Large latte',);
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: HomeView(),
    );
  }
}

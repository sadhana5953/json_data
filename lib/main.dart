import 'package:flutter/material.dart';
import 'package:json_data/screen/8.1%20json%20parsing/provider/jsonProvider.dart';
import 'package:json_data/screen/8.1%20json%20parsing/view/jsonView.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => jsonProvider(),
      builder: (context, child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => jsonViewPage(),
            },
          ),
    );
  }
}
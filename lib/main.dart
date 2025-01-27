import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charles\'s Programs',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2b537d),
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFFedf2f4),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage (title: 'CONNEXION'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        // centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            SizedBox(
              // height: 30,
              width: MediaQuery.of(context).size.width * 0.075,
            ),
            Image.asset(
              'images/logo_64x64.jpg',
              height: 30,
            ),
            // Text(
            //   widget.title,
            //   style: Theme.of(context).textTheme.titleLarge,
            // ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff8d99ae),
        ),
        // child: Container(
        //   margin: const EdgeInsets.symmetric(horizontal: 30.0),
        //   color: const Color(0xFF8d99ae),
        //   height: 40,
        //   // decoration: const BoxDecoration(
        //   //   border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF))
        //   // ),
        //   decoration: const BoxDecoration(
        //     border: Border(
        //       top: BorderSide(color: Color(0xFFFFFFFF)),
        //       left: BorderSide(color: Color(0xFFFFFFFF)),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

// That didn't work with the height, something center the icon vertically, what would be the reason (this would waste some context) ?

// Also, if i place this in the child of the AppBar with the title will it work for the title too ?
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomeScreen(),
    );
  }
}


class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                  fontSize: 28
                  , color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Experiment with text styles',
              style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You clicked the button!')),
                );
              },
              child: Text('Click Me'),
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 229, 239, 246)),
            ),
             SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Flutter!',
                      style: TextStyle(color: const Color.fromARGB(255, 17, 144, 247)),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

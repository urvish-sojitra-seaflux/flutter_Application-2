import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print('Answer Choosen');
  }

  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      // home: Scaffold(
      //     appBar: AppBar(
      //       title: const Text('Home'),
      //     ),
      //     body: Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.stretch,
      //         children: <Widget>[
      //           // Text('HEllo '),
      //           // Image.network(
      //           //   'https://images.unsplash.com/photo-1640957507202-6e5ad7cd3365?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80',
      //           //   width: 200,
      //           //   height: 500,
      //           //   fit: BoxFit.cover,
      //           // ),
      //         ],
      //       ),
      //     ))
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Hello!'),
              // const Text('My',
              //     style: TextStyle(
              //         decoration: TextDecoration.underline, fontSize: 20)),
              // const Text('Name',
              //     style: TextStyle(
              //         decoration: TextDecoration.lineThrough, fontSize: 20)),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'My',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 30)),
                    TextSpan(
                        text: ' Name',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 30)),
                  ],
                ),
              ),
              Image.network(
                'https://images.unsplash.com/photo-1640957507202-6e5ad7cd3365?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80',
                width: 450,
                height: 400,
                fit: BoxFit.cover,
              ),
              TextButton(
                  onPressed: answerQuestions, child: const Text('Answer 1')),
              TextButton(
                  onPressed: answerQuestions, child: const Text('Answer 2')),
              Container(padding: const EdgeInsets.all(20)),
              const ElevatedButton(
                  onPressed: null,
                  child: Text('Submit', style: TextStyle(fontSize: 30))),
            ],
          ),
        ),
      ),
    );
  }
}

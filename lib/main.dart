import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginPage(title: 'Firebase Login App'),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({super.key, required this.title});
  final String title;
  @override
  State<loginPage> createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  String _textName = '';
  String _textPass = '';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.title),
        Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            width: screenWidth * 0.7,
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _textName = value;
                    });
                  },
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _textPass = value;
                    });
                  },
                )
              ],
            )),
      ],
    ));
  }
}

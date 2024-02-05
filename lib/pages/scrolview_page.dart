import 'package:flutter/material.dart';
// ScrolViewda tepadan pastga o'tkazish uchun kerak
class ScrolviewPage extends StatefulWidget {
  const ScrolviewPage({super.key});

  @override
  State<ScrolviewPage> createState() => _ScrolviewPageState();
}

class _ScrolviewPageState extends State<ScrolviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Scroll View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color:Colors.red,
              height: 250,
            ),
            Container(
              color:Colors.blue,
              height: 250,
            ),
            Container(
              color:Colors.amber,
              height: 250,
            ),
            Container(
              color:Colors.white,
              height: 250,
            ),
            Container(
              color:Colors.deepPurple,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}

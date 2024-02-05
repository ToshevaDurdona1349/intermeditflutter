import 'package:flutter/material.dart';
// Draver telegramga o'xshab yonidan ma'lumotlarni chiqarib beradi
class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("T way,",style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
      body: Center(
        child: Text("Welcome to Tway "),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
            height: 200,  
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Xurshidbek"),
                  Text("Xurshidbek@gmail.com"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

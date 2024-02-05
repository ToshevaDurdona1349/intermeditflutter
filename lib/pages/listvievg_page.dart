import 'package:flutter/material.dart';
// ListView Gorizantal ko'p datalarni berish uchun kerak
class ListViewGPage extends StatefulWidget {
  const ListViewGPage({super.key});

  @override
  State<ListViewGPage> createState() => _ListViewGPageState();
}

class _ListViewGPageState extends State<ListViewGPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("List View"),
      ),
      body: Container(
        color: Colors.amber,
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemList(title: "Xurshidbek",image:"assets/image.jpeg"),
            _itemList(title: "Xursand",image:"assets/img.png"),

          ],
        ),
      ),
    );
  }
  Widget _itemList({title,image}){
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image(
            width:70,
            height:70,
            fit:BoxFit.cover,
            image:AssetImage(image),
          ),
          SizedBox(height: 10,),
          Text(title)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List View"),
      ),
      body: ListView(
        children: [
          _itemList(title: "Xurshidbek",image: "assets/image.jpg"),
          _itemList(title: "Begzodbek",image: "assets/img.png"),
          _itemList(title: "Sherzodbek",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
          _itemList(title: "Firdavs",image: "assets/image.jpg"),
        ],
      ),
    );
  }

  Widget _itemList({title, image}){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(width: 10,),
          Text(title)
        ],
      ),
    );
  }
}
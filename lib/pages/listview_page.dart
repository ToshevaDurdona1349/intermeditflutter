import 'package:flutter/material.dart';
// ListViewda ko'p datalarni berish uchun muhum
class LidstViewage extends StatefulWidget {
  const LidstViewage({super.key});

  @override
  State<LidstViewage> createState() => _LidstViewageState();
}

class _LidstViewageState extends State<LidstViewage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("List View"),
      ),
      body: ListView(
        children: [
          _itemList(title: "Xurshidbek",image:"assets/image.jpeg"),
          _itemList(title: "Xursand",image:"assets/img.png"),
        ],
      ),
    );
  }
  Widget _itemList({title,image}){
    return Container(
      padding: EdgeInsets.all(18),
      child: Row(
        children: [
          image(
            width:70,
            height:70,
            fit:BoxFit.cover,
            image:AssetImage(image),
          ),
          SizedBox(width: 10,),
          Text(title)
        ],
      ),
    );
  }
}

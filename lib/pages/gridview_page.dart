import 'package:flutter/material.dart';
// Gried view qancha qator yoki ustun bermoqchi bo'lsak shuni berib ketishimiz kerak
class GrideViewPage extends StatefulWidget {
  const GrideViewPage({super.key});

  @override
  State<GrideViewPage> createState() => _GrideViewPageState();
}

class _GrideViewPageState extends State<GrideViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Gride View"),
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        _itemList(title: "Xurshidbek",image:"assets/image.jpg"),
        _itemList(title: "Ayiqcha",image:"assets/img.png"),
      ],
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

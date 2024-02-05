import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Dialog shart orqali Android va IoSga dialog chiqarish
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _dialogiOS(){
    showDialog(context: context,
        builder: (BuildContext context){
      return CupertinoAlertDialog(
        title: Text("Logaut"),
        content: Text("Are you sure you want logaut?"),
        actions: [
         CupertinoDialogAction(
           isDefaultAction: true,
             child:Text("Cencel"),
         onPressed: (){
           Navigator.of(context).pop();
         },
         ),
          CupertinoDialogAction(
            textStyle: TextStyle(color: Colors.red),
            isDefaultAction: true,
            child:Text("Conifirm"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      );
        }
    );
  }

  void _dialogAndroid(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Logaut"),
        content: Text("Are you sure you want logaut?"),
        actions: [
          MaterialButton(
            child: Text("Censel"),
              onPressed:(){
          Navigator.of(context).pop();
              },
          ),
          MaterialButton(
            child: Text("Confirm"),
            onPressed:(){
          Navigator.of(context).pop();
          },
          ),
        ],
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:MaterialButton(onPressed: () {
          if(Platform.isAndroid){
            _dialogAndroid();
          }else if(Platform.isIOS){
            _dialogiOS();
          }
        },
          child: Text("Open a dialog"),
        )
      ),
    );
  }
}

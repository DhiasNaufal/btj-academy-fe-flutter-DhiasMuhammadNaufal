import 'package:flutter/material.dart';

import 'baktiPage.dart';
List Item =[1, 2, 3];
int counter = 4;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BTJ Academy"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: Item.length,
                itemBuilder: (context, index){
                  return CardItem(index);
                },
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //
      // }, child: Text("+"),),
    );
  }

  Widget CardItem(index) => Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/yazz.png', width: 70,),
              SizedBox(width:20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("tahun")
                ],
              ),
            ],
          ),
          // Text(Item[index].toString()),
          Text("Kelas"),
        ],
      ),
    ),
  );


}

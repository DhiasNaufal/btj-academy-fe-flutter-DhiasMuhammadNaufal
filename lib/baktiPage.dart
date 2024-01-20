import 'package:btj_mobile_dev/listCard-exercise.dart';
import 'package:flutter/material.dart';

import 'baktiDetail.dart';

List Nama =["Larike", "Tabuah Elok"];
List Desk =["MLU0016", "KLB00615"];
List Km =[14230, 12188];
class BaktiPages extends StatelessWidget {
  const BaktiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/BAKTI-LOGO.png", height: 30,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index){
                    return BaktiCard(context, index);
                  }),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            }, child: Text("Excercise task - Making ListView Card")),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }

  Widget BaktiCard(context, index) => Card(
    color: Colors.white,
    child: InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  BaktiDetail(nama: Nama[index],)),
        );
        print("pencet ${index}");
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Nama[index]),
                Text(Desk[index])
              ],
            ),
            Text("${Km[index].toString()} km"),
          ],
        ),
      ),
    ),
  );
}


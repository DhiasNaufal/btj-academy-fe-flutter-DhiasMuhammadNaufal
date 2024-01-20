import 'package:flutter/material.dart';
class BaktiDetail extends StatelessWidget {
  final String nama;
  const BaktiDetail({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.clear))],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Image.asset("assets/BAKTI-LOGO.png", height: 30,),
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCard,
              SizedBox(height: 10,),
              Text("Project Information"),
              SizedBox(height: 20,),
              projectName,
              detail,
              siteInformation,
              siteAddress,
              otherInformation
            ],
          ),
        ),
      ),
    );
  }

  Widget get buildCard => Container(
    decoration: BoxDecoration(
      color: Color(0xff2C3280),
      borderRadius: BorderRadius.circular(8),
    ),
    // margin: EdgeInsets.symmetric(horizontal: 32, vertical: 5),


    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                  Text("(-3.70379, 127.92553)", style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Site Real ID",style: TextStyle(color: Colors.grey)),
                  Text("MLU0016",style: TextStyle(color: Colors.white,fontSize: 16)),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Provinsi",style: TextStyle(color: Colors.grey)),
                  Text("Maluku",style: TextStyle(color: Colors.white,fontSize: 16)),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kabupaten",style: TextStyle(color: Colors.grey)),
                  Text("Maluku Tengah",style: TextStyle(color: Colors.white,fontSize: 16)),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kelurahan",style: TextStyle(color: Colors.grey)),
                  Text(nama,style: TextStyle(color: Colors.white,fontSize: 16)),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );

  Widget get projectName =>Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text("Project Name"),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Penyediaan Infrastruktur Pendukung Base Transceiver Station (BTS) 4G dan Infrastruktur Pendukung"),
        ),
      )
    ],
  );

  Widget get detail =>Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text("Detail"),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Vendor / Mitra"),
              Text("Kemitraan FH-TI-MTD"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Scope of work"),
              SizedBox(width: 70,),
              Flexible(child: Text("Tower Tubelar Triangle Guyed Mast 32 Height")),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tanggal / Jam"),
              Text("12 /10/2023"),
            ],
          ),
        ),
      ),



    ],
  );

  Widget get siteInformation =>Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text("Site Information"),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Site Name"),
              Text("MLU0016"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Site Name"),
              Text("LARIKE"),
            ],
          ),
        ),
      ),
    ],
  );

  Widget get siteAddress =>Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text("Site Address"),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Provinsi"),
              Text("MALUKU"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kabupaten"),
              Text("MALUKU TENGAH"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kecamatan"),
              Text("LEIHITU BARAT"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kelurahan"),
              Text("LARIKE"),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("GPS Coordinate"),
              Text("(-3.70379, 127.92553)"),
            ],
          ),
        ),
      ),
    ],
  );

  Widget get otherInformation =>Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text("Other Information"),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Configuration"),
                SizedBox(width: 70,),
                Flexible(child: Text("Tower_Konfig-23 (Tower Tubelar Triangle Guyed Mast 32 Height"))]
          ),
        ),
      ),
    ],
  );

}
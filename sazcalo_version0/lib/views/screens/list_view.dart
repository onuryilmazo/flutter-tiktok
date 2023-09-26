import 'package:flutter/material.dart';
import 'package:sazcalo_version0/views/screens/baglama_home_page.dart';

class ListViewPicker extends StatelessWidget{
  const ListViewPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BaglamaHomePage()),
                );
              },
              child: const Center(child: Text('BAĞLAMA',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 80,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Text('GİTAR',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),),
        ),
        SizedBox(
          height: 15,
        ),Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Text('PİYANO',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),),
        ),
        SizedBox(
          height: 15,
        ),Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Text('KLARNET',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Text('BATERİ',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
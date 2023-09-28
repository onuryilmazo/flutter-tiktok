import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'common/show_model.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Projext',
        theme: ThemeData(),
        home: const HomePage(),
      ),
    )
  );
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,  // yükselti/kaldırma: app bar altındaki çizgiyi silme
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber.shade200,
            radius: 25,
            child: Image.asset('assets/download.png'),
          ),
          title: const Text('Hello I\'m'),
          subtitle: const Text('Callisnado'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.calendar),),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell),),

          ],),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Today\'s Task',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Wednesday,11 may'),
                    ],
                  ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD5E8FA),
                          foregroundColor: Colors.blue.shade800,
                        ),
                        onPressed: () => showModalBottomSheet( //context parametresi, metodun çağrıldığı widget'ın bulunduğu widget ağacındaki konumunu temsil eder. Bu, alt sayfanın nasıl oluşturulacağını ve hangi kontrollerin kullanılacağını belirlemek için kullanılır.
                                                                      //builder parametresi, alt sayfanın içeriğini oluşturan bir fonksiyonu belirtir. Bu fonksiyon, alt sayfanın içeriğini tanımlar.
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            context: context,
                            builder: (context) => AddNewTaskModel(),
                        ),
                    child: Text('+ New Task'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


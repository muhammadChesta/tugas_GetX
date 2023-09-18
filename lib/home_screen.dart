import 'package:baru_lagii/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:baru_lagii/home_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
        actions: [
          IconButton(onPressed: (){
            Get.bottomSheet(Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              width: 100,
              height: 100,
              child: Column(
                children: [
                TextButton(onPressed: (){Get.toNamed('/indec');}, child: Text('InCrease')),
                    SizedBox(
                      height: 10,
                    ),
                  TextButton(onPressed: (){Get.toNamed('/listsc');}, child: Text('List')),
                ],
              ),
            ));
          }, icon: Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:Column(
          children: [
            TextField(
                controller: hc.namacontroller,
                decoration: InputDecoration(labelText:'input nama'),
                onSubmitted: (value) {
                  hc.gantiNilai(hc.namacontroller.text);
                  // Get.snackbar('nama anda adalah : ', hc.nama.value,
                  //     snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));

                  // Get.defaultDialog(
                  //   title: "sama yang di input",
                  //   middleText: hc.namacontroller.text,
                  //   onConfirm: (){
                  //     Get.to(SecondScreen(), arguments: hc.namacontroller.text);
                  // });
                },
              ),
            SizedBox(height: 20,),
            // Obx(()=> Text(hc.nama.value)),
            GetBuilder<HomeController>(builder: (hc){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(hc.nama),
                  ],
                );

            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(() => Text(hc.isOpen.value ? "open" : "closed")),
                Obx(() => Switch(
                  value : hc.isOpen.value,
                  activeColor: Colors.green,
                  onChanged: (value){
                    hc.setIsOpen(value);
                })),
              ],
            )


          ],
        ),
        )
      );
  }
}
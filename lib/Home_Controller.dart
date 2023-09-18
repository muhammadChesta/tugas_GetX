import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController namacontroller =TextEditingController();

  RxBool isOpen = RxBool(true);

  String nama='';

  void gantiNilai(String Nm){
    nama=Nm;
    update();
  }

  void setIsOpen(bool open) {
    isOpen(open);
    print(isOpen);
    }
  }



  // RxString nama = RxString('');
  //
  // void ChangeName(String nm) {
  //   nama.value = nm;
  //   print(nama.value);
  //
  // }

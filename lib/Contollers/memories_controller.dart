
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../Model/memories_model.dart';

final memoriesCntrler = Get.put(MemoriesController());
CollectionReference users = FirebaseFirestore.instance.collection('journal');

class MemoriesController extends GetxController{
  List<MemoriesModel> memoriesItems = [];

  addMemories(MemoriesModel items){
    memoriesItems.add(items);
    update();
  }
}
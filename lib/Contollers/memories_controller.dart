
import 'package:get/get.dart';

import '../Model/memories_model.dart';

final memoriesCntrler = Get.put(MemoriesController());

class MemoriesController extends GetxController{
  List<MemoriesModel> memoriesItems = [];

  addMemories(MemoriesModel items){
    memoriesItems.add(items);
    update();
  }
}
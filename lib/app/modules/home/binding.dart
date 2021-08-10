import 'package:bit_wallet/app/data/socket/block_chain.dart';
import 'package:bit_wallet/app/modules/home/controller.dart';
import 'package:bit_wallet/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(BlockChain())));
  }
}

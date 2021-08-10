import 'package:bit_wallet/app/modules/home/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
  WebSocketChannel? channel;
  Stream? broadCastStream;
  @override
  void onInit() {
    this.channel =
        WebSocketChannel.connect(Uri.parse('wss://echo.websocket.org/'));
    this.broadCastStream = this.channel!.stream.asBroadcastStream();
    this.broadCastStream!.listen((event) {});
    super.onInit();
  }

  TextEditingController textController = TextEditingController(text: '');
  sendMessage() {
    print(this.textController.text);
    this.textController.text.isEmpty
        ? ScaffoldMessenger.of(Get.context!).showSnackBar(
            SnackBar(content: Text('Insira alguma palavra ou valor')))
        : this.channel!.sink.add(this.textController.text);
  }

  @override
  void onClose() {
    this.textController.dispose();
    this.channel!.sink.close(status.goingAway);
    super.onClose();
  }

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}

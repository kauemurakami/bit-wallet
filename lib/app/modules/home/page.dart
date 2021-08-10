import 'dart:ui';

import 'package:bit_wallet/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: this.controller.textController,
          ),
          StreamBuilder(
            stream: this.controller.broadCastStream,
            builder: (context, snapshot) {
              return Text(
                snapshot.hasData ? '${snapshot.data}' : '',
                style: TextStyle(color: Colors.black),
              );
            },
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => this.controller.sendMessage(),
        tooltip: 'Send message',
        child: const Icon(Icons.send),
      ),
    );
  }
}

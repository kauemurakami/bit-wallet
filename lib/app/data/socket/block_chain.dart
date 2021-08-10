import 'package:get/get_connect.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final baseUrl = 'wss://echo.websocket.org/';
final blockChainUrl = 'wss://ws.prod.blockchain.info/mercury-gateway/v1/ws';
final head = 'https://exchange.blockchain.com';

class BlockChain {
  WebSocketChannel listenHeartBeats() {
    final _channel = WebSocketChannel.connect(
      Uri.parse(
        baseUrl,
      ),
    );
    return _channel;
  }

  WebSocketChannel getHeartBeats() {
    final _channel = WebSocketChannel.connect(
      Uri.parse(
        '$blockChainUrl/heartbeat',
      ),
    );
    return _channel;
  }
}

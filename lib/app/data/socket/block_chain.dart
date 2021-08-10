import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class BlockChain {
  WebSocketChannel listenHeartBeats() {
    final _channel = WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.org'),
    );
    return _channel;
  }
}

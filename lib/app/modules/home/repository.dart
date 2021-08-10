import 'package:bit_wallet/app/data/socket/block_chain.dart';

class HomeRepository {
  final BlockChain socket;
  HomeRepository(this.socket);
  listenHeartBeats() => this.socket.listenHeartBeats();
  getHeartBeats() => this.socket.getHeartBeats();
}

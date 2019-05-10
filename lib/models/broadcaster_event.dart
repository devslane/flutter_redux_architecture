import 'package:flutter_demo/service/broadcaster_service.dart';

class BroadcasterEvent {
  BroadcasterEventType event;
  Map<String, dynamic> data;

  BroadcasterEvent(BroadcasterEventType event, Map<String, dynamic> data) {
    this.event = event;
    this.data = data;
  }
}

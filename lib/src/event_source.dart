import 'entity/pack.dart';

abstract class EventSource {
  Stream<EventPack> on(String event);
}

import 'package:dio_sse/dio_sse.dart' as dio;
import 'package:event_source_plus/src/entity/pack.dart';
import 'event_source.dart';

class EventSourceIo implements EventSource {
  @override
  Stream<EventPack> on(String event) {
    throw UnimplementedError();
  }
}

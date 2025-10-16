import 'package:event_source_plus/src/entity/pack.dart';
import 'package:web/web.dart' as web;
import 'event_source.dart';

class EventSourceWebConfig {
  final String url;
  final bool withCredentials;

  const EventSourceWebConfig({required this.url, this.withCredentials = false});
}

class EventSourceWeb implements EventSource {
  final EventSourceWebConfig? webConfig;

  EventSourceWeb({required this.webConfig});

  Future<void> _start() async {
    final webConfig = this.webConfig;
    if (webConfig == null) return;
    final eventSource = web.EventSource(webConfig.url, web.EventSourceInit(withCredentials: webConfig.withCredentials));
  }

  @override
  Stream<EventPack> on(String event) {
    // TODO: implement on
    throw UnimplementedError();
  }
}

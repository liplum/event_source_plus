import 'dart:async';

import 'package:event_source_plus/src/entity/pack.dart';
import 'package:web/web.dart' as web;
import 'event_source.dart';
import 'dart:js_interop';

class EventSourceWebConfig {
  final String url;
  final bool withCredentials;

  const EventSourceWebConfig({required this.url, this.withCredentials = false});
}

class EventSourceWeb implements EventSource {
  final EventSourceWebConfig? webConfig;
  web.EventSource? _sse;

  EventSourceWeb({required this.webConfig});

  Future<void> start() async {
    final webConfig = this.webConfig;
    if (webConfig == null) return;
    final eventSource = web.EventSource(webConfig.url, web.EventSourceInit(withCredentials: webConfig.withCredentials));
    _sse = eventSource;
  }

  @override
  Stream<EventPack> on(String event) {
    _sse!.addEventListener(event, (web.MessageEvent e) {

    }.toJS);
  }
}

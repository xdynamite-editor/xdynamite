import 'dart:async';
import 'dart:io';

Future writeAndFlush(IOSink sink, String str) {
  return sink.addStream((StreamController<List<int>>()
        ..add(str.codeUnits)
        ..close())
      .stream);
}

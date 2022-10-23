import 'dart:async';
import 'dart:io';

Stream<List<int>> streamFromString(String text) async* {
  yield text.codeUnits;
}

Future writeAndFlush(IOSink sink, String str) {
  return sink.addStream((StreamController<List<int>>()
        ..add(str.codeUnits)
        ..close())
      .stream);
}

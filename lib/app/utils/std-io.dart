import 'dart:async';
import 'dart:io';

Stream<String> streamFromString(String text) async* {
  yield text;
}

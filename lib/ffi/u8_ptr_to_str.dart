import 'dart:convert';
import 'dart:ffi' as ffi;

extension U8ToStr on ffi.Pointer<ffi.Uint8> {
  int get length {
    var length = 0;
    while (this[length] != 0) {
      length++;
    }
    return length;
  }

  String get string {
    return utf8.decode(asTypedList(length));
  }
}

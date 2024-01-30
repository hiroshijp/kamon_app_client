import 'dart:convert';
import 'dart:typed_data';

Uint8List fromBase64ToUint8List(String s) {
  return base64Decode(s);
}

// import 'package:encrypt/encrypt.dart';

// class EncryptDecrypt {
//   final _salt = IV.fromLength(16);
//   final _encrypter =
//       Encrypter(AES(Key.fromUtf8('my32lengthmastesecretnooneknows4')));

//   Encrypted encryptPhrase(String phrase) {
//     return _encrypter.encrypt(phrase, iv: _salt);
//   }

//   String decryptPhrase(Encrypted encPhrase) {
//     return _encrypter.decrypt(encPhrase, iv: _salt);
//   }
// }

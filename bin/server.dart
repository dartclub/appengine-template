import 'dart:io';
import 'package:appengine/appengine.dart';
import 'package:appengine_template/router.dart';

main() async {
  await runAppEngine(requestHandler);
  // test(); for local testing
}

test() async {
  try {
    await HttpServer.bind(InternetAddress.loopbackIPv4, 8080)
      ..listen(requestHandler);
  } catch (e) {
    print(e);
  }
}

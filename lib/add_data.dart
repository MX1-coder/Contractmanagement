import 'dart:io';

import 'package:path_provider/path_provider.dart' ;
import 'package:permission_handler/permission_handler.dart';

Future<bool> addDataToCSV(String data) async {
  if (await Permission.storage.request().isGranted) {
    String dir = (await getExternalStorageDirectory())!.path;
    print(dir);
    data += "\n";
    try {
      IOSink f = File(dir + "/data.csv").openWrite(mode: FileMode.writeOnlyAppend);
      f.write(data);
      f.close();
    } catch (e) {
      return false;
    }
    return true;
  }
  return false;
}
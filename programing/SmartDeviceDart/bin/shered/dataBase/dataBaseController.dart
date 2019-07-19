import 'dart:async';

import 'package:firedart/firestore/models.dart';

import 'cloudFireStore.dart';

class DataBaseController {
  CloudFireStore _cloudFireStore;
  DataBaseController() {
    _cloudFireStore = CloudFireStore();
  }

  // This method get data data of field in the dataPath
  Future<String> getAllFieldsInPath(String dataPath) async {
    return await _cloudFireStore.getData(dataPath);
  }

  // This method get data data of field in the dataPath
  Future<String> getFieldInPath(String dataPath, String fieldName) async {
    return await _cloudFireStore.getFieldInPath(dataPath, fieldName);
  }

  // This method will return data each time that data will be changing in the database
  Stream<Stream<Stream<Document>>> listenToChangeOfDataInPath(String dataPath) async* {
    yield _cloudFireStore.listenToChangeOfDataInPath(dataPath);
  }

  // TODO: Write the code
  Future<String> setData(String dataPath, Object objectToInsert) async {
    return null;
  }
}
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

class PersonRepository {
  late final Dio client;
  PersonRepository() {
    client = Dio(BaseOptions(
      baseUrl: "https://logistic.ztkt.ru:14443",
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
      sendTimeout: const Duration(milliseconds: 30000),
    ));
    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  Future<PersonEntity> getPersonEntiti() async {
    try {
      var response = await client.post("/timesheet/getAllEmployee", data: {});
      if (kDebugMode) {
        print(response.data.toString());
      }
      // final data = json.decode(response.data);
      return PersonEntity.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void setPersonEntiti(List<Results> persons) async {
    try {
      PersonEntity personEntity = PersonEntity(results: persons);
      personEntity.toJson();
      debugPrint(personEntity.toJson().toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

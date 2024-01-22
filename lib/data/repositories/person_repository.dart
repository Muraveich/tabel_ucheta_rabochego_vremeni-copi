import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

class PersonRepository {
  Future<PersonEntity> getAllPerson() async {
    try {
      var response = await rootBundle.loadString('assets/PersonData.json');
      final data = json.decode(response);
      return PersonEntity.fromJson(data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

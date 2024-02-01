import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';

class PersonRepository {
  Future<PersonEntity> getPersonEntiti() async {
    try {
      var response = await rootBundle.loadString('assets/PersonData.json');
      final data = json.decode(response);
      return PersonEntity.fromJson(data);
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

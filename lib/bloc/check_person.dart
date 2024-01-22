import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/repositories/person_repository.dart';

class CheckPerson {
  late PersonRepository allPerson = PersonRepository();
  late PersonEntity persons;
  late Results me;

  Future<Results?> checkLogPas(String log, String pas) async {
    persons = await allPerson.getAllPerson();
    for (var element in persons.results) {
      if (element.name == log && element.password == pas) {
        me = element;
        return element;
      }
    }
    return null;
  }

  Future<List<Results?>> getOllPerson() async {
    var persons = await allPerson.getAllPerson();
    return persons.results;
  }
}

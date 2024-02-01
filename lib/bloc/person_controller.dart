import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
import 'package:tabel_ucheta_rabochego_vremeni/data/repositories/person_repository.dart';

class PersonController {
  late PersonRepository personRepo = PersonRepository();

  Future<Results?> checkLogPas(String log, String pas) async {
    var persons = await personRepo.getPersonEntiti();
    for (var element in persons.results) {
      if (element.name == log && element.password == pas) {
        return element;
      }
    }
    return null;
  }

  Future<List<Results>> getAllPerson() async {
    var persons = await personRepo.getPersonEntiti();
    return persons.results;
  }

  Future<int> getNowShift() async {
    var persons = await personRepo.getPersonEntiti();
    return persons.now_shift!.now_shift;
  }
}

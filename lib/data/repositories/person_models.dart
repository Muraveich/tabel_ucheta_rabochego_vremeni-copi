// import 'package:tabel_ucheta_rabochego_vremeni/api/test_api.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/data/entities/post/rabochiy.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/data/entities/post/master.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/data/entities/post/rukovoditel.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/data/entities/person_entity.dart';
// import 'package:tabel_ucheta_rabochego_vremeni/data/entities/post/postPerson.dart';

// class PersonModels extends PersonEntity {
//   const PersonModels({
//     required post,
//     required pasword,
//     required id,
//     required name,
//     required smena,
//     required date,
//     required status,
//   }) : super(
//           id: id,
//           name: name,
//           pasword: pasword,
//           post: post,
//           smena: smena,
//           status: status,
//           date: date,
//         );

//   factory PersonModels.fromApi(ApiPerson api) {
//     return PersonModels(
//       post: {
//         if (api.post == 'начальник') api.post as Rukovoditel,
//         if (api.post == 'мастер') api.post as Master,
//         if (api.post == 'рабочий') api.post as Rabochiy,
//       },
//       pasword: api.pasword,
//       id: api.id,
//       name: api.name,
//       smena: api.smena,
//       date: api.data,
//       status: api.status,
//     );
//   }

//   ApiPerson toApi(PersonModels person) {
//     return ApiPerson(
//         data: person.date,
//         status: person.statusConvertToString(person),
//         smena: smena,
//         id: id,
//         name: name,
//         post: person.postConvertToString(person.post),
//         pasword: pasword);
//   }

//   String postConvertToString(PostPerson person) {
//     String text;

//     if (person is Rukovoditel) {
//       text = 'начальник';
//     } else if (person is Master) {
//       text = 'мастер';
//     } else if (person is Rabochiy) {
//       text = 'рабочий';
//     } else
//       return 'null';
//     return text;
//   }

//   String? statusConvertToString(PersonModels person) {
//     String? text;

//     if (person.status == StatusEnum.den) {
//       text = 'den';
//     } else if (person.status == StatusEnum.noch) {
//       text = 'noch';
//     } else if (person.status == StatusEnum.rv) {
//       text = 'rv';
//     } else if (person.status == StatusEnum.dopOtp) {
//       text = 'dopotp';
//     } else if (person.status == StatusEnum.bolnichnyi) {
//       text = 'bolnichnyi';
//     } else if (person.status == StatusEnum.perevod) {
//       text = 'perevod';
//     } else if (person.status == StatusEnum.progul) {
//       text = 'progul';
//     }
//     return text;
//   }

//   StatusEnum? stringConvertToStatusEnum(ApiPerson person) {
//     StatusEnum? statusE;
//     if (person.status == 'rv') {
//       statusE = StatusEnum.rv;
//     } else if (person.status == 'den') {
//       statusE = StatusEnum.den;
//     } else if (person.status == 'noch') {
//       statusE = StatusEnum.noch;
//     } else if (person.status == 'dopotp') {
//       statusE = StatusEnum.dopOtp;
//     } else if (person.status == 'bolnichnyi') {
//       statusE = StatusEnum.bolnichnyi;
//     } else if (person.status == 'perevod') {
//       statusE = StatusEnum.perevod;
//     } else if (person.status == 'progul') {
//       statusE = StatusEnum.progul;
//     }
//     return statusE;
//   }
// }

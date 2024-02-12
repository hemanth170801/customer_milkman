// import 'package:intl/intl.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// part 'user_details_model.g.dart';
//
// @JsonSerializable()
// class UserDetailsModel {
//   @JsonKey(name: 'first_name')
//   final String firstName;
//   @JsonKey(name: 'last_name')
//   final String lastName;
//   @JsonKey(name: 'date_of_birth')
//   @DateOfBirthConverter()
//   final DateTime dateOfBirth;
//   final String gender;
//
//   String get dateOfBirthInSting => DateFormat('yyyy-MM-dd').format(dateOfBirth);
//
//   UserDetailsModel({
//     required this.firstName,
//     required this.lastName,
//     required this.dateOfBirth,
//     required this.gender,
//   });
//
//   factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
//       _$UserDetailsModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$UserDetailsModelToJson(this);
//
//   @override
//   String toString() {
//     return 'UserDetailsModel{firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender}';
//   }
// }
//
// class DateOfBirthConverter implements JsonConverter<DateTime, String> {
//   const DateOfBirthConverter();
//
//   @override
//   DateTime fromJson(String json) => DateFormat('yyyy-MM-dd').parse(json);
//
//   @override
//   String toJson(DateTime object) => DateFormat('yyyy-MM-dd').format(object);
// }

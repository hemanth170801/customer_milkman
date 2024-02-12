// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'user_details_model.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) =>
//     UserDetailsModel(
//       firstName: json['first_name'] as String,
//       lastName: json['last_name'] as String,
//       dateOfBirth: const DateOfBirthConverter()
//           .fromJson(json['date_of_birth'] as String),
//       gender: json['gender'] as String,
//     );
//
// Map<String, dynamic> _$UserDetailsModelToJson(UserDetailsModel instance) =>
//     <String, dynamic>{
//       'first_name': instance.firstName,
//       'last_name': instance.lastName,
//       'date_of_birth':
//       const DateOfBirthConverter().toJson(instance.dateOfBirth),
//       'gender': instance.gender,
//     };
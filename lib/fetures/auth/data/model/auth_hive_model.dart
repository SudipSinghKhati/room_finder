import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
// import 'package:room_finder_app/fetures/auth/domain/entity/consumer_entity.dart';
import 'package:uuid/uuid.dart';

final authHiveModelProvider = Provider(
  (ref) => AuthhiveModel.empty(),
);
class AuthhiveModel{
  @HiveField(0)
  final String consumerId;

  @HiveField(1)
  final String firstName;

  @HiveField(2)
  final String? middleName;

  @HiveField(3)
  final String lastName;

  @HiveField(4)
  final String contactNumber;

  @HiveField(5)
  final String email;

  @HiveField(6)
  final String password;

  AuthhiveModel({
    String? consumerId,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactNumber,
    required this.email,
    required this.password,
    }) : consumerId = consumerId ??const Uuid().v4();

    //emty constructor
    AuthhiveModel.empty()
    :this(
      consumerId: '',
      firstName: '',
      middleName: '',
      lastName: '',
      contactNumber: '',
      email: '',
      password: '',
    );















    

  //   ConsumerEntity toEntity() => ConsumerEntity(
  //     id: consumerId,
  //     fName: firstName,
  //     lName: lastName,
  //     mName: middleName, 
  //     phone: contactNumber, 
  //     email: email, 
  //     password: password);

  //     //convert Entity to Hive Object
  //     AuthhiveModel toHiveModel(ConsumerEntity entity) => AuthhiveModel(
  //       consumerId: const Uuid().v4(),
  //       firstName: entity.fName,
  //       middleName: entity.mName,
  //       lastName: entity.lName,
  //       contactNumber: entity.phone,
  //       email: entity.email,
  //       password:entity.password
  //       );

  //     //covert Entity List to Hice List
  //     List<AuthhiveModel> toHiveModelList(List<ConsumerEntity> entities) =>
  //       entities.map((entity) => toHiveModel(entity)).toList();
        
  //     @override
  //     String toString() {
    
  //     return 'consumerId: $consumerId, firstName:$firstName, middleName: $middleName, lastName: $lastName, contactNumber: $contactNumber, email: $email, password: $password';
  // }

}
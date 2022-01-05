import 'dart:convert';
import 'package:meta/meta.dart';

List<Profile> dateProfileFromJson(String str) =>
    List<Profile>.from(json.decode(str).map((x) => Profile.fromJson(x)));
String dateProfileToJson(List<Profile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Profile {
  Profile(
      {required this.id,
      required this.nombre,
      required this.paterno,
      required this.materno,
      required this.telefono,
      required this.email,
      required this.fnac,
      required this.foto,
      required this.descripcion,
      required this.servicio,
      required this.reputacion,
      required this.empresa});

  final int id;
  final String nombre;
  final String paterno;
  final String materno;
  final String telefono;
  final String email;
  final String fnac;
  final String foto;
  final String descripcion;
  final String servicio;
  final String reputacion;
  final String empresa;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json['id'],
        nombre: json['nombre'],
        paterno: json['paterno'],
        materno: json['materno'],
        telefono: json['telefono'],
        email: json['email'],
        fnac: json['fnac'],
        foto: json['foto'],
        descripcion: json['descripcion'],
        servicio: json['servicio'],
        reputacion: json['reputacion'],
        empresa: json['empresa'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'paterno': paterno,
        'materno': materno,
        'telefono': telefono,
        'email': email,
        'fnac': fnac,
        'foto': foto,
        'descripcion': descripcion,
        'servicio': servicio,
        'reputacion': reputacion,
        'empresa': empresa,
      };
}

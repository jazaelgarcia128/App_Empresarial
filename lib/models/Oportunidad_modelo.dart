// To parse this JSON data, do
//
//     final oportunidadModelo = oportunidadModeloFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<OportunidadModelo> oportunidadModeloFromJson(String str) => List<OportunidadModelo>.from(json.decode(str).map((x) => OportunidadModelo.fromJson(x)));

String oportunidadModeloToJson(List<OportunidadModelo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OportunidadModelo {
    OportunidadModelo({
        required this.id,
        required this.nombre,
        required this.descripcion,
        required this.estatus,
        required this.comentarios,
        required this.requisitos,
        required this.telefono,
        required this.cotizacion,
        required this.fecha,
    });

    final int id;
    final String nombre;
    final String descripcion;
    final String estatus;
    final String comentarios;
    final String requisitos;
    final String telefono;
    final String cotizacion;
    final String fecha;

    factory OportunidadModelo.fromJson(Map<String, dynamic> json) => OportunidadModelo(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        estatus: json["estatus"],
        comentarios: json["comentarios"],
        requisitos: json["requisitos"],
        telefono: json["telefono"],
        cotizacion: json["cotizacion"],
        fecha: json["fecha"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "estatus": estatus,
        "comentarios": comentarios,
        "requisitos": requisitos,
        "telefono": telefono,
        "cotizacion": cotizacion,
        "fecha": fecha,
    };
}

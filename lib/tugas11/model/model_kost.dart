import 'dart:convert';

class Kost {
  final int? id;
  final String nama;
  final int nomorhandphone;
  final int nomorkamar;
  final int umur;
  Kost({
    this.id,
    required this.nama,
    required this.nomorhandphone,
    required this.nomorkamar,
    required this.umur,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'nomorhandphone': nomorhandphone,
      'nomorkamar': nomorkamar,
      'umur': umur,
    };
  }

  factory Kost.fromMap(Map<String, dynamic> map) {
    return Kost(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      nomorhandphone: map['nomorhandphone'] as int,
      nomorkamar: map['nomorkamar'] as int,
      umur: map['umur'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Kost.fromJson(String source) =>
      Kost.fromMap(json.decode(source) as Map<String, dynamic>);
}

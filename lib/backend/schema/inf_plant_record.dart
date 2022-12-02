import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inf_plant_record.g.dart';

abstract class InfPlantRecord
    implements Built<InfPlantRecord, InfPlantRecordBuilder> {
  static Serializer<InfPlantRecord> get serializer =>
      _$infPlantRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Habitad')
  String? get habitad;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Caracteristicas')
  String? get caracteristicas;

  @BuiltValueField(wireName: 'Categorias')
  String? get categorias;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InfPlantRecordBuilder builder) => builder
    ..nombre = ''
    ..habitad = ''
    ..imagen = ''
    ..descripcion = ''
    ..caracteristicas = ''
    ..categorias = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inf_plant');

  static Stream<InfPlantRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InfPlantRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InfPlantRecord._();
  factory InfPlantRecord([void Function(InfPlantRecordBuilder) updates]) =
      _$InfPlantRecord;

  static InfPlantRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInfPlantRecordData({
  String? nombre,
  String? habitad,
  String? imagen,
  String? descripcion,
  String? caracteristicas,
  String? categorias,
}) {
  final firestoreData = serializers.toFirestore(
    InfPlantRecord.serializer,
    InfPlantRecord(
      (i) => i
        ..nombre = nombre
        ..habitad = habitad
        ..imagen = imagen
        ..descripcion = descripcion
        ..caracteristicas = caracteristicas
        ..categorias = categorias,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recetas_record.g.dart';

abstract class RecetasRecord
    implements Built<RecetasRecord, RecetasRecordBuilder> {
  static Serializer<RecetasRecord> get serializer => _$recetasRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Ingredientes')
  String? get ingredientes;

  @BuiltValueField(wireName: 'Preparacion')
  String? get preparacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecetasRecordBuilder builder) => builder
    ..nombre = ''
    ..descripcion = ''
    ..imagen = ''
    ..ingredientes = ''
    ..preparacion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recetas');

  static Stream<RecetasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecetasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecetasRecord._();
  factory RecetasRecord([void Function(RecetasRecordBuilder) updates]) =
      _$RecetasRecord;

  static RecetasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecetasRecordData({
  String? nombre,
  String? descripcion,
  String? imagen,
  String? ingredientes,
  String? preparacion,
}) {
  final firestoreData = serializers.toFirestore(
    RecetasRecord.serializer,
    RecetasRecord(
      (r) => r
        ..nombre = nombre
        ..descripcion = descripcion
        ..imagen = imagen
        ..ingredientes = ingredientes
        ..preparacion = preparacion,
    ),
  );

  return firestoreData;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recetas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecetasRecord> _$recetasRecordSerializer =
    new _$RecetasRecordSerializer();

class _$RecetasRecordSerializer implements StructuredSerializer<RecetasRecord> {
  @override
  final Iterable<Type> types = const [RecetasRecord, _$RecetasRecord];
  @override
  final String wireName = 'RecetasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecetasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ingredientes;
    if (value != null) {
      result
        ..add('Ingredientes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preparacion;
    if (value != null) {
      result
        ..add('Preparacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RecetasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecetasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ingredientes':
          result.ingredientes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Preparacion':
          result.preparacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RecetasRecord extends RecetasRecord {
  @override
  final String? nombre;
  @override
  final String? descripcion;
  @override
  final String? imagen;
  @override
  final String? ingredientes;
  @override
  final String? preparacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecetasRecord([void Function(RecetasRecordBuilder)? updates]) =>
      (new RecetasRecordBuilder()..update(updates))._build();

  _$RecetasRecord._(
      {this.nombre,
      this.descripcion,
      this.imagen,
      this.ingredientes,
      this.preparacion,
      this.ffRef})
      : super._();

  @override
  RecetasRecord rebuild(void Function(RecetasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecetasRecordBuilder toBuilder() => new RecetasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecetasRecord &&
        nombre == other.nombre &&
        descripcion == other.descripcion &&
        imagen == other.imagen &&
        ingredientes == other.ingredientes &&
        preparacion == other.preparacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nombre.hashCode), descripcion.hashCode),
                    imagen.hashCode),
                ingredientes.hashCode),
            preparacion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecetasRecord')
          ..add('nombre', nombre)
          ..add('descripcion', descripcion)
          ..add('imagen', imagen)
          ..add('ingredientes', ingredientes)
          ..add('preparacion', preparacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecetasRecordBuilder
    implements Builder<RecetasRecord, RecetasRecordBuilder> {
  _$RecetasRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _ingredientes;
  String? get ingredientes => _$this._ingredientes;
  set ingredientes(String? ingredientes) => _$this._ingredientes = ingredientes;

  String? _preparacion;
  String? get preparacion => _$this._preparacion;
  set preparacion(String? preparacion) => _$this._preparacion = preparacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecetasRecordBuilder() {
    RecetasRecord._initializeBuilder(this);
  }

  RecetasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _descripcion = $v.descripcion;
      _imagen = $v.imagen;
      _ingredientes = $v.ingredientes;
      _preparacion = $v.preparacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecetasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecetasRecord;
  }

  @override
  void update(void Function(RecetasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecetasRecord build() => _build();

  _$RecetasRecord _build() {
    final _$result = _$v ??
        new _$RecetasRecord._(
            nombre: nombre,
            descripcion: descripcion,
            imagen: imagen,
            ingredientes: ingredientes,
            preparacion: preparacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inf_plant_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InfPlantRecord> _$infPlantRecordSerializer =
    new _$InfPlantRecordSerializer();

class _$InfPlantRecordSerializer
    implements StructuredSerializer<InfPlantRecord> {
  @override
  final Iterable<Type> types = const [InfPlantRecord, _$InfPlantRecord];
  @override
  final String wireName = 'InfPlantRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InfPlantRecord object,
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
    value = object.habitad;
    if (value != null) {
      result
        ..add('Habitad')
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
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caracteristicas;
    if (value != null) {
      result
        ..add('Caracteristicas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categorias;
    if (value != null) {
      result
        ..add('Categorias')
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
  InfPlantRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfPlantRecordBuilder();

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
        case 'Habitad':
          result.habitad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Caracteristicas':
          result.caracteristicas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Categorias':
          result.categorias = serializers.deserialize(value,
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

class _$InfPlantRecord extends InfPlantRecord {
  @override
  final String? nombre;
  @override
  final String? habitad;
  @override
  final String? imagen;
  @override
  final String? descripcion;
  @override
  final String? caracteristicas;
  @override
  final String? categorias;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InfPlantRecord([void Function(InfPlantRecordBuilder)? updates]) =>
      (new InfPlantRecordBuilder()..update(updates))._build();

  _$InfPlantRecord._(
      {this.nombre,
      this.habitad,
      this.imagen,
      this.descripcion,
      this.caracteristicas,
      this.categorias,
      this.ffRef})
      : super._();

  @override
  InfPlantRecord rebuild(void Function(InfPlantRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfPlantRecordBuilder toBuilder() =>
      new InfPlantRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfPlantRecord &&
        nombre == other.nombre &&
        habitad == other.habitad &&
        imagen == other.imagen &&
        descripcion == other.descripcion &&
        caracteristicas == other.caracteristicas &&
        categorias == other.categorias &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), habitad.hashCode),
                        imagen.hashCode),
                    descripcion.hashCode),
                caracteristicas.hashCode),
            categorias.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfPlantRecord')
          ..add('nombre', nombre)
          ..add('habitad', habitad)
          ..add('imagen', imagen)
          ..add('descripcion', descripcion)
          ..add('caracteristicas', caracteristicas)
          ..add('categorias', categorias)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InfPlantRecordBuilder
    implements Builder<InfPlantRecord, InfPlantRecordBuilder> {
  _$InfPlantRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _habitad;
  String? get habitad => _$this._habitad;
  set habitad(String? habitad) => _$this._habitad = habitad;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _caracteristicas;
  String? get caracteristicas => _$this._caracteristicas;
  set caracteristicas(String? caracteristicas) =>
      _$this._caracteristicas = caracteristicas;

  String? _categorias;
  String? get categorias => _$this._categorias;
  set categorias(String? categorias) => _$this._categorias = categorias;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InfPlantRecordBuilder() {
    InfPlantRecord._initializeBuilder(this);
  }

  InfPlantRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _habitad = $v.habitad;
      _imagen = $v.imagen;
      _descripcion = $v.descripcion;
      _caracteristicas = $v.caracteristicas;
      _categorias = $v.categorias;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfPlantRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InfPlantRecord;
  }

  @override
  void update(void Function(InfPlantRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfPlantRecord build() => _build();

  _$InfPlantRecord _build() {
    final _$result = _$v ??
        new _$InfPlantRecord._(
            nombre: nombre,
            habitad: habitad,
            imagen: imagen,
            descripcion: descripcion,
            caracteristicas: caracteristicas,
            categorias: categorias,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

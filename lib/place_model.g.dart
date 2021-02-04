// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlaceModel on _PlaceModel, Store {
  final _$nameAtom = Atom(name: '_PlaceModel.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$typeAtom = Atom(name: '_PlaceModel.type');

  @override
  PlaceType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(PlaceType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$address1Atom = Atom(name: '_PlaceModel.address1');

  @override
  String get address1 {
    _$address1Atom.reportRead();
    return super.address1;
  }

  @override
  set address1(String value) {
    _$address1Atom.reportWrite(value, super.address1, () {
      super.address1 = value;
    });
  }

  final _$address2Atom = Atom(name: '_PlaceModel.address2');

  @override
  String get address2 {
    _$address2Atom.reportRead();
    return super.address2;
  }

  @override
  set address2(String value) {
    _$address2Atom.reportWrite(value, super.address2, () {
      super.address2 = value;
    });
  }

  final _$cityAtom = Atom(name: '_PlaceModel.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$stateAtom = Atom(name: '_PlaceModel.state');

  @override
  String get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$zipAtom = Atom(name: '_PlaceModel.zip');

  @override
  String get zip {
    _$zipAtom.reportRead();
    return super.zip;
  }

  @override
  set zip(String value) {
    _$zipAtom.reportWrite(value, super.zip, () {
      super.zip = value;
    });
  }

  final _$phoneAtom = Atom(name: '_PlaceModel.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
type: ${type},
address1: ${address1},
address2: ${address2},
city: ${city},
state: ${state},
zip: ${zip},
phone: ${phone}
    ''';
  }
}
